# androguard.db Guide (MT Manager + Android Phone Only)

This guide shows how to inspect `androguard.db` directly on your phone using **MT Manager** only.

## What you need
- Android phone
- MT Manager installed
- `androguard.db` file on device storage

## Steps
1. Open **MT Manager**.
2. Navigate to the folder containing `androguard.db`.
3. Tap `androguard.db`.
4. Choose **Open as database / SQLite** (wording may vary by MT Manager version).
5. Open the **table list** and select:
   - `session`
   - `information`
6. In `information`, review these key columns:
   - `filename`: scanned file path
   - `digest`: SHA-256 hash
   - `type`: usually `DEX`
   - `session_id`: session reference

## Quick checks to perform
- Confirm rows exist in `information`.
- Confirm each `digest` value is non-empty.
- Confirm `type` matches expected file types (`DEX` in this dataset).

## Optional cleanup/editing on phone
- You can long-press rows in MT Manager’s DB view to copy or edit values.
- If editing, create a backup first by copying `androguard.db` before changes.

## Notes
- This database is metadata-focused (file/session info), not the full decompiled source.
- Keep the original file unchanged if you need forensic integrity.
