function fish_right_prompt
    set -l last_status $status
    
    if test $last_status -ne 0
        set_color red
        echo -n '🥺 '$last_status
        set_color normal
    else
        set_color 90ee90  # light green
        echo -n '✨ '
        set_color normal
    end
end
