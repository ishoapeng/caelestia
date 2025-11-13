function fish_greeting
    clear

    # Gradient colors
    set -l c1 (set_color -o ff5f5f)
    set -l c2 (set_color -o ff875f)
    set -l c3 (set_color -o ffaf5f)
    set -l c4 (set_color -o ffd75f)
    set -l c5 (set_color -o ffff5f)
    set -l reset (set_color normal)

    # Colorful ASCII banner
    echo -e "
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
'##:::::::'########:'########::'######:::::'########::'########::'######:::'####:'##::: ##:
'##::::::: ##.....::... ##..::'##... ##:::: ##.... ##: ##.....::'##... ##::. ##:: ###:: ##:
'##::::::: ##:::::::::: ##:::: ##:::..::::: ##:::: ##: ##::::::: ##:::..:::: ##:: ####: ##:
'##::::::: ######:::::: ##::::. ######::::: ########:: ######::: ##::'####:: ##:: ## ## ##:
'##::::::: ##...::::::: ##:::::..... ##:::: ##.... ##: ##...:::: ##::: ##::: ##:: ##. ####:
'##::::::: ##:::::::::: ##::::'##::: ##:::: ##:::: ##: ##::::::: ##::: ##::: ##:: ##:. ###:
'########: ########:::: ##::::. ######::::: ########:: ########:. ######:::'####: ##::. ##:
........::........:::::..::::::......::::::........:::........:::......::::....::..::::..::
"

    # Welcome message
    set_color cyan
    echo "┌─ Lets get this show on the road, $USER!"
    echo "└──────────────────────────────────────────────"
    set_color normal

    # Custom system summary (fast and clean)
    set_color brmagenta; echo "Kernel:   "(uname -r)
    set_color bryellow;  echo "OS:       "(grep '^PRETTY_NAME' /etc/os-release | cut -d= -f2 | tr -d '"')
    set_color brcyan;    echo "Uptime:   "(uptime -p)
    set_color brgreen;   echo "WM:       Hyprland"
    set_color brblue;    echo "Shell:    fish "(fish --version | awk '{print $3}')
    set_color brwhite;   echo "Packages: "(pacman -Q | wc -l)
    set_color brred;     echo "Memory:   "(free -h | awk '/Mem:/ {print $3 "/" $2}')
    set_color normal

    echo ""
    set_color yellow
    echo "──────────────────────────────────────────────"
    set_color normal

    # Run fastfetch with left padding
    fastfetch --key-padding-left 4
end
