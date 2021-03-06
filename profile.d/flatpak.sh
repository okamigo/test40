# /etc/profile.d/flatpak.sh - set XDG_DATA_DIRS

if [ "${XDG_DATA_DIRS#*flatpak}" = "${XDG_DATA_DIRS}" ]; then
    XDG_DATA_DIRS="${XDG_DATA_HOME:-"$HOME/.local/share"}/flatpak/exports/share:/var/lib/flatpak/exports/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}"
fi

export XDG_DATA_DIRS
