# Prop Board (free, stats-only)

## Run on Windows
1. Install Python 3.12 (check "Add to PATH") and Git.
2. In this folder: `pip install -r requirements.txt`
3. `python scripts\run_all.py` (takes a few minutes the first time; NHL downloads box scores once, then caches)
4. `python -m http.server 8000` then open http://localhost:8000

## Put it online free
1. Create a GitHub repo, push this folder.
2. Repo Settings > Pages > deploy from branch `main`, folder `/ (root)`. (Or connect the repo to Cloudflare Pages: no build command, output dir `/`.)
3. Refresh data by running `update.bat` on your PC, or let `.github/workflows/update.yml` do it every 6 hours.
   NOTE: stats.nba.com often blocks GitHub's servers. If the NBA step fails in Actions, use `update.bat`.

## Not built yet
- Sportsbook lines/prices and fair-odds (needs an odds API)
- UFC
- Claude-powered parlay builder and chat (needs an Anthropic API key and a small server/Cloudflare Worker)
