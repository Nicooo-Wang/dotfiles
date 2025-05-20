# the files are located in the bash-doc package.
# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
# ===>> mine
export TERM=xterm-256color
source $HOME/.local/scripts/my_tool_cmds.sh
# bazelisk 下载目录
export BAZELISK_BASE_URL=https://mirrors.tools.huawei.com/bazel/
# zsh-vi-mode
export ZVM_LINE_INIT_MODE='i' # 
# oh-my-zsh vi-mode
export VI_MODE_CURSOR_VISUAL=2
# ssl
export TLDR_ALLOW_INSECURE=1
export CURL_OPTIONS="-k"
# custom profile
if [ -f "$HOME/.profile.custom" ] ; then
  source $HOME/.profile.custom
fi
# bins
export PATH=$HOME/.local/bin:$PATH
# <<=== end mine
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$("$HOME/anaconda3/bin/conda" "shell.zsh" "hook" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
