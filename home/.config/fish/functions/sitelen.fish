function sitelen
    touch /tmp/sitelen.txt
    nvim /tmp/sitelen.txt
    perl -pe 'chomp if eof' /tmp/sitelen.txt | wl-copy
    perl -pe 'chomp if eof' /tmp/sitelen.txt | sitelen-ucsur | wl-copy
    rm /tmp/sitelen.txt
end
