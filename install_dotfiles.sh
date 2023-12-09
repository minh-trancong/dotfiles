#!/bin/bash

# Định nghĩa đường dẫn tới thư mục dotfiles
dotfiles_dir=~/dotfiles

# Danh sách các file dotfile
dotfiles=("bashrc" "vimrc" "tmux.conf")

# Vòng lặp qua từng dotfile
for file in "${dotfiles[@]}"; do
    # Tạo liên kết tượng trưng từ dotfile trong thư mục home của người dùng tới dotfile tương ứng trong thư mục dotfiles
    ln -sf "$dotfiles_dir/$file" "$HOME/.$file"
done

echo "Dotfiles đã được cài đặt thành công."
