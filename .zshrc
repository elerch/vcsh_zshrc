[ -r ~/.commonrc ] && source ~/.commonrc

# ZSH-specific calls here

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

#export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/sbin:/Users/emilerch/Workspace/go-workspace/bin"
