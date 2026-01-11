main() {
    sowon -e $@; fullscreen-notification "Time is up!" 3 &
    sowon
}

main $@ &
disown
exit
