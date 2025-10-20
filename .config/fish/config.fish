if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias d="developer"
alias dk="desktop"
alias dl="downloads"

eval "$(/opt/homebrew/bin/brew shellenv)"

/Users/laurent/bin/mise activate fish | source # added by https://mise.run/fish
