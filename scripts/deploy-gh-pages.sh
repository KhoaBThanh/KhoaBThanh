#!/usr/bin/env bash
#
# Publish the built site to the gh-pages branch, which GitHub Pages
# serves. The branch holds the built output only, never the source, so
# nothing is built on the GitHub side and the published site is exactly
# what `make build` produced on this machine.
#
# Usage: make deploy   (or: bash scripts/deploy-gh-pages.sh)

set -euo pipefail

here="$(cd "$(dirname "$0")/.." && pwd)"
cd "$here"

remote="$(git config --get remote.origin.url 2>/dev/null || true)"
if [ -z "$remote" ]; then
  echo "error: no git remote 'origin' in $here" >&2
  exit 1
fi

echo "building..."
make build >/dev/null

# Stop GitHub Pages from running Jekyll a second time over the output.
touch _site/.nojekyll

tmp="$(mktemp -d)"
cp -a _site/. "$tmp/"
cd "$tmp"

git init -q
git checkout -q -b gh-pages
git add -A
git -c user.name="site deploy" -c user.email="deploy@localhost" \
    commit -q -m "Publish site $(date -u +%Y-%m-%dT%H:%M:%SZ)"
git push -q -f "$remote" gh-pages

cd /
rm -rf "$tmp"

echo "published _site to gh-pages on $remote"
