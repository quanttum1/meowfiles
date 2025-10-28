function mpv-add-next
    set -l file $argv[1]
    set -l socket /tmp/mpvsocket

    if not test -f "$file"
        echo "File not found: $file"
        return 1
    end

    # Resolve absolute path
    set -l absfile (realpath "$file")

    # Get current playlist position
    set -l current_index (echo '{ "command": ["get_property", "playlist-pos"] }' | socat - $socket | jq -r .data)

    # Add file at the end
    echo "{ \"command\": [\"loadfile\", \"$absfile\", \"append\"] }" | socat - $socket

    # Wait briefly to ensure it's added
    sleep 0.1

    # Get the new playlist length and calculate the index of the new file
    set -l playlist_length (echo '{ "command": ["get_property", "playlist"] }' | socat - $socket | jq -r '.data | length')
    set -l new_index (math $playlist_length - 1)

    # Move it to just after current
    set -l target_index (math $current_index + 1)
    echo "{ \"command\": [\"playlist-move\", $new_index, $target_index] }" | socat - $socket

    # # Skip to the inserted file to play it now
    # echo "{ \"command\": [\"set_property\", \"playlist-pos\", $target_index] }" | socat - $socket
end
