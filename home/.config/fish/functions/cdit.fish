function cdit
    set last_command (history --max=1)
    if test -n "$last_command"
        set -l args (string split ' ' -- $last_command)
        cd (string trim -- (string collect -- $args[-1]))
    else
        echo "No previous command found"
    end
end
