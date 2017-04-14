[ -r ~/.commonrc ] && source ~/.commonrc

# ZSH-specific calls here
bindkey -e # Apparently EDITOR variable of vim will default ZLE to vim mode,
           # which I find annoying at the command line

# oh-my-zsh installation.
if [ -d ~/.oh-my-zsh ]; then
  export ZSH=~/.oh-my-zsh

  # Set name of the theme to load.
  # Look in ~/.oh-my-zsh/themes/
  ZSH_THEME="robbyrussell"

  # Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
  # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
  # Example format: plugins=(rails git textmate ruby lighthouse)
  # Add wisely, as too many plugins slow down shell startup.
  plugins=(git aws)
  source $ZSH/oh-my-zsh.sh
fi

# User configuration

# Syntax highlighting if available. Must be last to run
[ -r ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && \
  source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
