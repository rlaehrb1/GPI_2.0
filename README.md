# GPI 2.0 Precision Studio

GPI 2.0 is a local web app for image-to-text prompt generation. It keeps the fast GPI 1.3 workflow while replacing the EXE/Tkinter surface with a lightweight Express + Vite React app.

## Quick Start

```powershell
npm install
npm run dev
```

Open:

```text
http://127.0.0.1:8787
```

## Providers

- OpenAI OAuth Local: no OpenAI API key. Use the in-app connect button to launch Codex OAuth login and start the local `openai-oauth` proxy.
- Gemini: save your Gemini API key inside the app. The key is stored locally in `.gpi/local.json`, which is ignored by Git.

## Models

OpenAI OAuth:

- `gpt-5.5`
- `gpt-5.4`
- `gpt-5.4-mini`

Gemini:

- `gemini-3.5-flash`
- `gemini-3.1-flash-lite`

## Shortcuts

- `F1`: generate
- `F5`: retry with the same image
- `Ctrl+V`: paste image or image URL
- `Ctrl+C`: copy result when no text selection is active
- `Esc`: cancel current generation

## Local Files

Runtime files are stored under `.gpi/` and should not be committed:

- `.gpi/local.json`
- `.gpi/history.json`
- `.gpi/logs.jsonl`
