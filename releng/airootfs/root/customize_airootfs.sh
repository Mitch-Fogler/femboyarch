#!/usr/bin/env bash
set -e

# Clone ML4W dotfiles and place them under /root and /etc for reference
ml4w_dest="/root/ml4w-dotfiles"
repo="https://github.com/mylinuxforwork/dotfiles"

echo ":: Cloning ML4W dotfiles..."
if [ ! -d "$ml4w_dest" ]; then
    git clone --depth 1 "$repo" "$ml4w_dest"
    cp -r "$ml4w_dest" /etc/ml4w-dotfiles
fi
