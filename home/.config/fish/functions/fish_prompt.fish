function fish_prompt
    auto_activate_venv
    set_color 663399  # soft purple
    echo -n '🌸 '
    
    set_color ff69b4  # pink
    echo -n (prompt_pwd)
    
    set git_branch (__fish_git_prompt | string trim)
    if test -n "$git_branch"
        set_color da70d6  # orchid
        echo -n ' 🌷 '$git_branch
    end
    
    set_color 87ceeb  # sky blue
    echo -n ' 💖💖💖 '
    
    set_color normal
end
