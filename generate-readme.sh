SCRIPT_DIR="$(realpath "$(dirname "${BASH_SOURCE[0]}")")"

generate-version() {
    echo "### $1:"
    echo "- Installation/source: $2"
    echo "- Version:"
    echo "\`\`\`"
    $1 --version
    echo "\`\`\`"
    echo
}

generate-readme() {
    cat $SCRIPT_DIR/README_template.md
    generate-version "sway" "https://github.com/WillPower3309/swayfx"
    generate-version "wofi" "\`sudo apt install wofi\`"
    generate-version "wezterm" "\`sudo apt install wezterm\`"
    generate-version "fish" "\`sudo apt install fish\`"
    generate-version "nvim" "https://github.com/neovim/neovim/releases/download/v0.11.2/nvim-linux-x86_64.appimage"
    generate-version "waybar" "\`sudo apt install waybar\`"
    generate-version "bongocat" "https://github.com/saatvik333/wayland-bongocat/releases/download/v1.2.4/bongocat"
    generate-version "ipython3" "\`sudo apt install ipython3\`"
    echo "Run \`bash generate-readme.sh\` whenever you update any of them"
}

generate-readme > $SCRIPT_DIR/README.md
