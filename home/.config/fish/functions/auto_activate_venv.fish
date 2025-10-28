function auto_activate_venv
    if test -e .venv/bin/activate.fish
        source .venv/bin/activate.fish
    end
end
