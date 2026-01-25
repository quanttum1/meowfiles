main() {
    sowon -e $@;
    swaymsg "workspace 9"
    swaymsg "focus left"
}

main $@ &
