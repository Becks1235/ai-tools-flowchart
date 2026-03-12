# Shadow Circuit: Classroom Override

If you cannot open or download the game, use this checklist in order.

## 1) Open instantly (no server)

- Double-click **`shadow-circuit-game.html`**.
- If that does not work, double-click **`index.html`**.

## 2) Open with a local server (most reliable)

```bash
python3 -m http.server 3000
```

Then open one of these URLs:

- <http://localhost:3000/shadow-circuit-game.html>
- <http://localhost:3000/index.html>

## 3) If download buttons are blocked

Inside the game page there are multiple fallbacks:

- **Get Bundled File** (normal download link)
- **Open Bundled File** (open in new tab)
- **Download Offline Copy** (Blob download)
- **Show Raw HTML** (manual copy fallback)

## 4) Common causes

- Browser preview panels often block scripts/downloads.
- JavaScript disabled in browser settings.
- Strict school device policies blocking downloads.

Try Chrome, Edge, Firefox, or Safari in a normal browser tab.

## Quick start script

From this folder you can run:

```bash
./scripts/start_game.sh
```

Then open <http://localhost:3000/index.html>.

You can also verify required files with:

```bash
./scripts/verify_game.sh
```
