function git
    if not ssh-add -l >/dev/null 2>&1
        ssh-add -t 2h ~/.ssh/id_ed25519
    end

    command git $argv
end
