// generate-docs.js
// Run with: node generate-docs.js

const fs = require("fs");
const path = require("path");

// ---- LuaDocParser (same logic as in your browser code) ----
class LuaDocParser {
    parseLuaFile(content, filePath) {
        const lines = content.split(/\r?\n/);
        const functions = [];

        let description = "";
        let pendingParams = [];
        let pendingReturn = { type: "void", description: "" };
        let currentDocClass = null;
        const classFields = {};

        const pathParts = filePath.split("/");

        // apiSet: client / server / unknown
        let apiSet = "unknown";
        if (pathParts[0] === "client" || pathParts[0] === "server") {
            apiSet = pathParts[0];
        }

        // type: native / constructor / engine / general (2nd segment)
        let type = "general";
        if (pathParts[1]) {
            type = pathParts[1];
        }

        // folder-based category from path
        const fileName = pathParts[pathParts.length - 1] || "";
        const fileBase = fileName.replace(/\.lua$/i, "");

        let folderCategory = "misc";
        if (pathParts.length > 3) {
            // e.g. client/constructor/Actor/WebUI.lua → "Actor"
            folderCategory = pathParts[pathParts.length - 2];
        } else if (pathParts.length > 2) {
            // e.g. client/constructor/Actor.lua → "Actor"
            folderCategory = fileBase || "misc";
        } else {
            folderCategory = fileBase || "misc";
        }

        for (let i = 0; i < lines.length; i++) {
            const line = lines[i].trim();

            if (line.startsWith("---")) {
                // Doc comment line
                const comment = line.substring(3).trim();

                if (comment.startsWith("@class")) {
                    const classMatch = comment.match(/@class\s+(\w+)/);
                    if (classMatch) {
                        currentDocClass = classMatch[1];
                        if (!classFields[currentDocClass]) {
                            classFields[currentDocClass] = [];
                        }
                    }
                    continue;
                }

                if (comment.startsWith("@field") && currentDocClass) {
                    const fieldMatch = comment.match(/@field\s+(?:private|public|protected)?\s*(\w+)\s+(\S+)\s*(?:@(.*))?/);
                    if (fieldMatch) {
                        const [, name, typeName, desc] = fieldMatch;
                        classFields[currentDocClass].push({
                            name,
                            type: typeName,
                            description: (desc || "").trim(),
                        });
                    }
                    continue;
                }

                if (comment.startsWith("@param")) {
                    const paramMatch = comment.match(/@param\s+(\S+)\s+(\S+)(?:\s+@\[(out|opt)\])?\s*(.*)/);
                    if (paramMatch) {
                        const [, name, typeName, modifier, desc] = paramMatch;
                        pendingParams.push({
                            name,
                            type: typeName,
                            modifier: modifier || null,
                            description: (desc || "").trim(),
                        });
                    }
                    continue;
                }

                if (comment.startsWith("@return")) {
                    const returnMatch = comment.match(/@return\s+(\S+)(?:\s+(.*))?/);
                    if (returnMatch) {
                        pendingReturn = {
                            type: returnMatch[1],
                            description: returnMatch[2] ? returnMatch[2].trim() : "",
                        };
                    }
                    continue;
                }

                if (!comment.startsWith("@")) {
                    description += (description ? " " : "") + comment;
                }

                continue;
            }

            // Function signatures
            if (line.startsWith("function") || line.startsWith("local function")) {
                let classNameFromSig = null;
                let functionName = null;
                let params = "";
                let callStyle = null; // ".", ":", or null for global

                // Normalize to remove "local" prefix for matching
                const sigLine = line.replace(/^local\s+/, "");

                // function Class.Method(...)
                let match = sigLine.match(/^function\s+([A-Za-z_]\w*)\.([A-Za-z_]\w*)\s*\((.*)\)/);
                if (match) {
                    classNameFromSig = match[1];
                    functionName = match[2];
                    params = match[3];
                    callStyle = "."; // static / namespace style
                } else {
                    // function Class:Method(...)
                    match = sigLine.match(/^function\s+([A-Za-z_]\w*):([A-Za-z_]\w*)\s*\((.*)\)/);
                    if (match) {
                        classNameFromSig = match[1];
                        functionName = match[2];
                        params = match[3];
                        callStyle = ":"; // instance style
                    } else {
                        // function foo(...)
                        match = sigLine.match(/^function\s+([A-Za-z_]\w*)\s*\((.*)\)/);
                        if (match) {
                            functionName = match[1];
                            params = match[2];
                            callStyle = null; // global / free function
                        }
                    }
                }

                if (!functionName) {
                    // Not a recognized function pattern; clear doc state and continue
                    description = "";
                    pendingParams = [];
                    pendingReturn = { type: "void", description: "" };
                    continue;
                }

                const paramList = params
                    .split(",")
                    .map((p) => p.trim())
                    .filter((p) => p.length > 0);

                // Ensure each param has a doc entry
                if (pendingParams.length < paramList.length) {
                    for (let idx = pendingParams.length; idx < paramList.length; idx++) {
                        const paramName = paramList[idx];
                        pendingParams.push({
                            name: paramName,
                            type: "any",
                            modifier: null,
                            description: "",
                        });
                    }
                }

                const logicalCategory = currentDocClass || folderCategory || "General";

                const func = {
                    name: functionName,
                    category: logicalCategory,
                    folderCategory,
                    apiSet,
                    type,
                    description,
                    className: classNameFromSig || null,
                    callStyle,
                    parameters: pendingParams.slice(),
                    returns: pendingReturn,
                    rawParams: params,
                    properties: classFields[logicalCategory] || [], // <-- NEW
                };

                functions.push(func);

                // Reset doc state after a function
                description = "";
                pendingParams = [];
                pendingReturn = { type: "void", description: "" };
                continue;
            }

            // Any other real code line: reset doc state
            if (line !== "") {
                description = "";
                pendingParams = [];
                pendingReturn = { type: "void", description: "" };
            }
        }

        return functions;
    }
}

// ---- Walk docs/ and collect all .lua files ----

const DOCS_ROOT = path.join(__dirname, "docs");

function collectLuaFiles(dir, relDir = "") {
    const entries = fs.readdirSync(dir, { withFileTypes: true });
    const files = [];

    for (const entry of entries) {
        const absPath = path.join(dir, entry.name);
        const relPath = relDir ? `${relDir}/${entry.name}` : entry.name;

        if (entry.isDirectory()) {
            files.push(...collectLuaFiles(absPath, relPath));
        } else if (entry.isFile() && entry.name.toLowerCase().endsWith(".lua")) {
            files.push({ absPath, relPath });
        }
    }

    return files;
}

function generateDocs() {
    console.log("Scanning docs/ for Lua files...");

    const luaFiles = collectLuaFiles(DOCS_ROOT);
    console.log(`Found ${luaFiles.length} .lua files`);

    const parser = new LuaDocParser();
    const functionMap = new Map();

    for (const file of luaFiles) {
        const content = fs.readFileSync(file.absPath, "utf8");
        const parsed = parser.parseLuaFile(content, file.relPath);

        for (const func of parsed) {
            const key = func.className ? `${func.className}.${func.name}` : func.name;

            if (functionMap.has(key)) {
                const existing = functionMap.get(key);

                // Merge apiSet (client/server) like your frontend does
                if (!Array.isArray(existing.apiSet)) {
                    existing.apiSet = [existing.apiSet];
                }
                if (func.apiSet && !existing.apiSet.includes(func.apiSet)) {
                    existing.apiSet.push(func.apiSet);
                }
            } else {
                functionMap.set(key, func);
            }
        }
    }

    const allFunctions = Array.from(functionMap.values());

    const outPath = path.join(__dirname, "docs-index.json");
    fs.writeFileSync(outPath, JSON.stringify(allFunctions, null, 2), "utf8");

    console.log(`Wrote ${allFunctions.length} functions to ${outPath}`);
}

generateDocs();
