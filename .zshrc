[ -r ~/.commonrc ] && source ~/.commonrc

# ZSH-specific calls here
bindkey -e # Apparently EDITOR variable of vim will default ZLE to vim mode,
           # which I find annoying at the command line

# oh-my-zsh installation.
if [ -d ~/.oh-my-zsh ]; then
  export ZSH=~/.oh-my-zsh

  # Set name of the theme to load.
  # Look in ~/.oh-my-zsh/themes/
  ZSH_THEME=""

  # Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
  # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
  # Example format: plugins=(rails git textmate ruby lighthouse)
  # Add wisely, as too many plugins slow down shell startup.
  plugins=(git)
  source $ZSH/oh-my-zsh.sh
fi

# User configuration

# Syntax highlighting if available. Must be last to run
[ -r ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && \
  source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

typeset -A ZSH_HIGHLIGHT_STYLES
# These variables are dark blue by default, which is tough on a black background
ZSH_HIGHLIGHT_STYLES[globbing]='fg=13' # pink: 36 ok but green too close to standard
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=09' # orange: 36 ok but green too close to standard

# These variables are all set to none by default. Let's technicolor rainbow them
# I'm not convinced all of these are working properly in the syntax highlighter
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=09,bold' # bold orange - make it stand out
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='green' # Green to match other command stuff
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='green' # Green to match other command stuff
ZSH_HIGHLIGHT_STYLES[back-quoted-argment]='fg=red,bold' # signal not to use back quotes
ZSH_HIGHLIGHT_STYLES[assign]='fg=129' # Purple-ish
ZSH_HIGHLIGHT_STYLES[redirection]='fg=13,bold' # Bold ping

# urls are a problem for zsh - add a couple handy aliases
alias curl="noglob curl"
alias wget="noglob wget"
