function sitelen
    touch /tmp/sitelen.txt
    nvim /tmp/sitelen.txt
    cat /tmp/sitelen.txt | wl-copy
    cat /tmp/sitelen.txt | sitelen-ucsur | wl-copy
    rm /tmp/sitelen.txt
end
