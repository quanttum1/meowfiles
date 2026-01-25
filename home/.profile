# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -z "$SSH_AUTH_SOCK" ]; then
    eval "$(ssh-agent -s)"
fi

export LANG=en_GB.UTF-8
export LC_TIME=en_GB.UTF-8
export LC_MEASUREMENT=en_GB.UTF-8

if [ -z "$DISPLAY" ] && [ -z "$WAYLAND_DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
    export OZONE_PLATFORM=wayland
    export GDK_BACKEND=wayland
    export QT_QPA_PLATFORM=wayland
    export SDL_VIDEODRIVER=wayland
    export _JAVA_AWT_WM_NONREPARENTING=1
    export MOZ_ENABLE_WAYLAND=1
    export XDG_SESSION_TYPE=wayland
    export XDG_CURRENT_DESKTOP=sway
    exec sway
fi
. "$HOME/.cargo/env"
