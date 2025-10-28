function cdit
    set last_command (history --max=1)
    if test -n "$last_command"
        set -l args (string split ' ' -- $last_command)
        if count $args > 0
            cd (string trim -- (string collect -- $args[-1]))
        else
            echo "No arguments found in last command"
        end
    else
        echo "No previous command found"
    end
end
