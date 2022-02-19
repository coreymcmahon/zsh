# NVM configuration (see https://github.com/nvm-sh/nvm)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

###
# Go
export GOPATH=$HOME/go
export ANDROID_SDK_ROOT=/Users/coreymcmahon/Library/Android/sdk

###
# Zsh options

## History
### Share history across multiple zsh sessions
setopt SHARE_HISTORY
### Append to history
setopt APPEND_HISTORY
### Add commands as they are typed
setopt INC_APPEND_HISTORY
### Do not store duplications
setopt HIST_IGNORE_DUPS
### Remove blank lines from history
setopt HIST_REDUCE_BLANKS


###
# Prompt

## Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

## Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on %b'
 
## Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%n in ${PWD/#$HOME/~} ${vcs_info_msg_0_} > '

###
## Aliases

alias g=git
alias ga="git add"
alias gd="git diff"
alias gc="git commit"
alias s="./vendor/bin/sail"
alias vi="nvim"
alias vim="nvim"
