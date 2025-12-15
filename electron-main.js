const { app, BrowserWindow } = require("electron");
const path = require("path");
const { spawn } = require("child_process");
const waitPort = require("wait-port");

let backendProcess;

function startBackend() {
  const backendPath = path.join(__dirname, "backend", "server.js");
  backendProcess = spawn(process.execPath, [backendPath], {
    env: { ...process.env, BACKEND_PORT: "4000" },
    stdio: "inherit"
  });
}

async function createWindow() {
  const win = new BrowserWindow({
    width: 1200,
    height: 800,
    webPreferences: {
      preload: path.join(__dirname, "preload.js"),
      nodeIntegration: false,
      contextIsolation: true
    }
  });

  // Esperar que el backend arranque
  const portOpen = await waitPort({ host: "localhost", port: 4000 });

  if (portOpen) {
    win.loadURL("http://localhost:4000");
  } else {
    win.loadFile("frontend/dist/index.html");
  }
}

app.whenReady().then(() => {
  startBackend();
  createWindow();
});

app.on("window-all-closed", () => {
  if (backendProcess) backendProcess.kill();
  app.quit();
});
