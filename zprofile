# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# set history
# use shopt for bash and use setopt for zsh
#shopt -s histappend
setopt histappend
# not working in zsh but works in bash
#export PROMPT_COMMAND="history -a; history -n"
#export PROMPT_COMMAND="history -a"

# set history option for zsh
# set history file
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
# set extended history format
#setopt EXTENDED_HISTORY
# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history
setopt APPEND_HISTORY


# for nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
# use jenv global xx.xx to activate a specific version

# for compiler to find java11
export CPPFLAGS="-I/opt/homebrew/opt/openjdk@11/include"

# for pyenv
eval "$(pyenv init -)"
# use pyenv global xx.xx.xx to activate a specific version
