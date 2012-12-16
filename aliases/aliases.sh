alias ls='ls -laGF'                           # Compact view, show color
alias dotfiles="$EDITOR $DOTFILES"            # Edit dotfiles
alias reload="source $HOME/.zshrc"            # Source dotfiles
alias sauce='reload'                          # Meta alias!
alias history='fc -l 1'                       # I want to see more the 16 history items
alias psg='ps aux | grep -v grep | grep $1'   # See what's running
alias z="_z -r 2>&1"                          # Highest rated results first

if [[ "$(uname -s)" == 'Darwin' ]]; then
  # Add a poor facsimile for Linux's `free` if we're on Mac OS
  alias free="top -s 0 -l 1 -pid 0 -stats pid | grep '^PhysMem: ' | cut -d : -f 2- | tr ',' '\n'"

  # Mac system information.
  alias macinfo='system_profiler SPHardwareDataType'
fi

# Open untracked/modified files in MacVim
alias modified='$EDITOR $(git ls-files -m -o --exclude-standard) .'

# Open last commit in MacVim
alias lastcommit='$EDITOR $(git show --pretty="format:" --name-only) .'

alias b='bundle && say bundle complete, mate' # Run bundle and say when it's done

alias dev="cd $HOME/Dev"                      # Go to the Dev directory
alias vimdir="cd $HOME/.dotfiles/vim"         # Go to the Vim directory
alias dotdir="cd $HOME/.dotfiles"             # Go to the Dotfiles directory

d() {
  if [[ -n "$1" ]]; then
    cd "+$1"
  else
    dirs -v
  fi
}
