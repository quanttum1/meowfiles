function update-discord
    # I call it with sudo so that the next sudo doesn't ask for the password, as I may switch to a different window,
    # and I don't want it to ask anything after I type the password first time
    sudo wget 'https://discord.com/api/download/stable?platform=linux&format=deb' --output-document='/tmp/discord.deb'
    sudo apt install '/tmp/discord.deb' 
    sudo rm '/tmp/discord.deb' -f
    way-discord 2&> /dev/null &
    disown
    exit # I don't need the terminal open after I update discord :)
end
