function serial() {
    BAUDRATE=115200
    SHOWHELP=false
    
    while getopts b:h opts; do
       case ${opts} in
          b) BAUDRATE=${OPTARG} ;;
          h) SHOWHELP=true ;;
       esac
    done

    if $SHOWHELP ; then
        echo "Usage $0 [-b [baudrate]"
        echo "  eg: $0 -b 115200 (the default)"
    else
        SERIAL=`ls /dev/ | egrep -i 'usbserial|KeySerial|ttyUSB' | head -1`
        screen -U /dev/${SERIAL} $BAUDRATE
        reset # to fix incorrect display of LF/CR
    fi
}