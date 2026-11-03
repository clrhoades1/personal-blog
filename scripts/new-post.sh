#!/usr/bin/env bash
# Create a new templated blog post in "src/pages/posts/Proposed blogs".
# Usage: ./scripts/new-post.sh <filename-without-extension>
# Example: ./scripts/new-post.sh My-New-Post

set -euo pipefail

if [[ $# -ne 1 || -z "$1" ]]; then
  echo "Usage: $0 <filename-without-extension>" >&2
  exit 1
fi

name="${1%.md}"   # tolerate an accidental .md suffix
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
target_dir="$script_dir/../src/pages/posts/Proposed blogs"
target="$target_dir/$name.md"

if [[ -e "$target" ]]; then
  echo "Error: '$target' already exists." >&2
  exit 1
fi

# Derive a default title from the filename: hyphens/underscores -> spaces
title="$(echo "$name" | tr '_-' '  ')"
pub_date="$(date +%m/%d/%Y)"

mkdir -p "$target_dir"
cat > "$target" <<TEMPLATE
---
title: "$title"
author: Connor Rhoades
description: ""
pubDate: $pub_date
tags: []
layout: '../../../layouts/Blog Post.astro'
---

# $title

TEMPLATE

echo "Created: $target"
