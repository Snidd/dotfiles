swaymsg "workspace 6"
swaymsg "exec firefox --new-window https://www.messenger.com"
slack &
sleep 0.1
teams-for-linux &
sleep 0.1
swaymsg "exec firefox --new-window https://outlook.office365.com" & sleep 6
swaymsg '[title="Mail - Magnus Kjellberg - Outlook — Mozilla Firefox"] move down'
