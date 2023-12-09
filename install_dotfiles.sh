#!/bin/bash

# Define the path to the dotfiles directory
dotfiles_dir=$(pwd)

# List of dotfiles
dotfiles=("bashrc" "vimrc" "tmux.conf" "zshrc")

# Loop through each dotfile
for file in "${dotfiles[@]}"; do
    # Create a symbolic link from the dotfile in the user's home directory to the corresponding dotfile in the dotfiles directory
    ln -sf "$dotfiles_dir/$file" "$HOME/.$file"
done

echo "Dotfiles have been successfully installed."