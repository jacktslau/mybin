function vpn-connect-as {
/usr/bin/env osascript <<-EOF
tell application "System Events"
        tell current location of network preferences
                set VPN to service "$1" -- your VPN name here
                if exists VPN then connect VPN
                repeat while (current configuration of VPN is not connected)
                    delay 1
                end repeat
        end tell
end tell
EOF
}

function vpn-disconnect-as {
/usr/bin/env osascript <<-EOF
tell application "System Events"
        tell current location of network preferences
                set VPN to service "$1" -- your VPN name here
                if exists VPN then disconnect VPN
        end tell
end tell
return
EOF
}


function vpn-connected-as {
/usr/bin/env osascript <<-EOF
tell application "System Events"
    tell current location of network preferences
        get name of every service whose (kind is greater than 10 and kind is less than 17) and connected of current configuration is true
    end tell
end tell
EOF
}

function vpn-refresh {
    compctl -K vpn-list vpn-connect
    compctl -K vpn-list vpn-disconnect

    local rprompt=${RPROMPT/<vpn:$(vpn-connected-as)>/}
    vpnconnected=`vpn-connected-as`

    if [ -n vpnconnected ]; then
        export VPNS=`vpn-connected-as`
        export RPROMPT="<vpn:$VPNS>$rprompt"
    else 
        export RPROMPT="$rprompt"
    fi
}

function vpn-list-as {
/usr/bin/env osascript <<-EOF
tell application "System Events"
    tell current location of network preferences
        get name of every service whose (kind is greater than 10 and kind is less than 17)
    end tell
end tell
EOF
}

function vpn-list {
    reply=($(vpn-list-as | tr ',' '\n' | sed 's/^[ \t]*//'))
}

function vpn-connect {
    vpn-connect-as $1

    local rprompt=${RPROMPT/<vpn:$(vpn-connected-as)>/}
    export VPNS=$1
    export RPROMPT="<vpn:$VPNS>$rprompt"
}

function vpn-disconnect {
    local rprompt=${RPROMPT/<vpn:$(vpn-connected-as)>/}
    unset VPNS
    export RPROMPT="$rprompt"

    vpn-disconnect-as $1
}

vpn-refresh