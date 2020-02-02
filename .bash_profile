alias ls='ls -F'
alias rm='rm -i'
alias ll='ls -Fl'
alias vim='nvim'
alias venvex='source /Users/charles/Projects/Python/venv-ex/bin/activate'
alias staging-wyg='ssh root@39.106.144.224'
alias text='open -a textmate'
alias vscode='open -a visual\ studio\ code'
# 设置终端颜色
export LS_OPTIONS='--color=auto'	# 如果没有指定，则自动选择颜色
export CLICOLOR='Yes'			# 是否输出颜色
export LSCOLORS=GxFxCxDxBxegedabagaced	# 指定ls的颜色

# 添加MySQL路径
PATH=$PATH:/usr/local/mysql/bin

function git-branch-name {
  git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3
}

function git-branch-prompt {
  local branch=`git-branch-name`
  if [ $branch ]; then printf "(%s)" $branch; fi
}

#PS1="\[\e[32m\]\W\[\e[m\]\]\[\033[0;36m\]\$(git-branch-prompt)\[\033[0m\] "
PS1="\[\033[0;32m\]\W\[\033[0m\]\[\033[0;36m\]\$(git-branch-prompt)\[\033[0m\] "
#PS1="\u@\h \[\033[0;36m\]\W\[\033[0m\]\[\033[0;32m\]\$(git-branch-prompt)\[\033[0m\] \$ "

# 给终端提示符添加颜色
#PS1='\[\e[32m\][\u \W]\$\[\e[m\] '


# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# 消除Mac terminal的zsh警告
# export BASH_SILENCE_DEPRECATION_WARNING=1
