generate-version() {
    echo "$1:"
    echo "\`\`\`"
    $1 --version
    echo "\`\`\`"
    echo
}

generate-readme() {
    cat README_template.md
    generate-version "bongocat"
    generate-version "fish"
    generate-version "nvim"
    generate-version "sway"
    generate-version "waybar"
    generate-version "wezterm"
    generate-version "wofi"
    echo "Run \`bash generate-readme.sh\` whenever you update any of them"
}

SCRIPT_DIR="$(realpath "$(dirname "${BASH_SOURCE[0]}")")"
generate-readme > $SCRIPT_DIR/README.md
