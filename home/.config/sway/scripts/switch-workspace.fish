set is_floating (swaymsg -t get_tree | jq -r '.. | objects | select(.focused==true) | .type' | grep -q floating_con; and echo yes; or echo no)

if [ $is_floating = "yes" ]
    swaymsg "move container to workspace number $argv"
    swaymsg "workspace number $argv"
    swaymsg "focus mode_toggle"
    exit
end

if swaymsg "focus mode_toggle"
    swaymsg "move container to workspace number $argv"
    swaymsg "workspace number $argv"
    swaymsg "focus mode_toggle"
end

swaymsg "workspace number $argv"
