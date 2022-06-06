// Express File Server for lcal network
// Copyright (c) 2022 nlfmt
//
// usage: node main.js [path] [port]
// or use scripts/serve.bat


const express = require("express");
const fs = require("fs");
const path = require("path");


const SERVE_PATH = process.argv[2] || process.cwd();
const PORT = process.argv[3] || 3000;
console.log(`Serving ${SERVE_PATH} on port ${PORT}`);

const app = express();
app.listen(PORT, () => {
    console.log(`\x1b[34m> Serving \x1b[33m"${SERVE_PATH}"\x1b[34m on Port \x1b[33m${PORT}.\x1b[0m`);
});


// Middleware & Static Files
app.use(express.static(SERVE_PATH, {
    dotfiles: "allow",
    index: false,
    redirect: false
}));
app.use("/api", express.json());


// Get all available files
app.get("/api/files", (req, res) => {
    // Read all file names from public folder
    const qpath = path.join(SERVE_PATH, decodeURI(req.query.path));
    if (!fs.existsSync(qpath)) return res.sendStatus(404);

    if (fs.statSync(qpath).isFile()) return res.sendStatus(404);
    const dir = fs.readdirSync(qpath);
    const data = {
        files: [],
        dirs: []
    }
    dir.forEach(entry => {
        const stats = fs.statSync(path.join(qpath, entry));
        if (stats.isFile()) {
            data.files.push(entry);
        } else if (stats.isDirectory()) {
            data.dirs.push(entry);
        }
    })
    res.send(data);
});

// Directory view
app.get("*", (req, res) => {
    res.sendFile(path.join(__dirname, "index.html"));
});


