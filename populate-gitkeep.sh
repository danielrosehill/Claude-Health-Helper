#!/bin/bash
# Populate .gitkeep files in all empty directories (excluding .git)

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

find "$REPO_DIR" -type d -empty -not -path "$REPO_DIR/.git/*" | while read -r dir; do
    touch "$dir/.gitkeep"
    echo "Created .gitkeep in: $dir"
done

echo "Done."
