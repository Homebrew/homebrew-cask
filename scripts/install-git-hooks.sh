#!/bin/sh

# Install repository-local Git hooks by configuring core.hooksPath.
# Run this from the repo root.

set -e

target_dir="$(pwd)/.githooks"

git config core.hooksPath "$target_dir"

echo "Configured git hooks path: $target_dir"
