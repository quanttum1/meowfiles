function fish_autosuggest_filter
    if string match -rq '^cd \.\.$' -- $argv
        return 1
    end
    return 0
end
