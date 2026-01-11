main() {
    sowon -e $@; fullscreen-notification "Time is up!" 3
}

main $@ &
disown
exit
