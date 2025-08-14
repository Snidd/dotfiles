if status is-interactive
    # Commands to run in interactive sessions can go here
    fastfetch
    atuin init fish | source
end

abbr -a spm sudo pacman -S

zoxide init fish | source
atuin init fish | source
