if status is-interactive
    # Starship custom prompt
    starship init fish | source

    # Custom colours
    cat ~/.local/state/caelestia/sequences.txt 2> /dev/null

    if not set -q VSCODE_GIT_IPC_HANDLE; and not set -q ZED_TERM; and not set -q TERMINAL_EMULATOR
        # Kalau bukan dari editor → langsung cd ke Desktop
        cd ~/Desktop
    end
end

# bun
set --export PATH $HOME/.bun/bin $PATH
set --export PATH $HOME/.local/bin $PATH
