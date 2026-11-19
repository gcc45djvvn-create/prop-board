@echo off
REM Refresh data on your PC and publish it. Run from the project folder.
python scripts\run_all.py
git add data\board.json
git commit -m "update board"
git push
