function lastarg
    echo (history --max=1 | string split ' ')[-1]
end
