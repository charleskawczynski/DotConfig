# added by Anaconda3 5.3.0 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!

# Personal notes:
#            The :$PATH specifies to APPEND the path provided.
#            To check path, e.g., use: echo $JULIA_LOAD_PATH
#            To check path, e.g., use: echo $JULIA_PKG_DEVDIR
#            To refresh this file from terminal: . ~/.bash_profile

# colour grep by default
#alias grep="grep --color=auto"
#alias cgrep="grep --color=always"
#alias ls="ls -p --color"
#alias cls="ls --color=always"

# Julia development directory:
export JULIA_PKG_DEVDIR="$HOME/Dropbox/Caltech/work/dev/julia"

# To parse Unicode with tab:
export LC_ALL=en_US.UTF-8

# Auto-complete git checkout branch ___:
test -f ~/.git-completion.bash && . $_

# export JULIA_PKG_DEVDIR=":$HOME/Dropbox/Caltech/work/dev:$PATH"

# Twine, for pipy
export PATH="$HOME/.local/lib/python3.7/site-packages:$PATH"

# handybelt package
export PATH="$HOME/Dropbox/PROGRAMMING/MAIN/handybelt/bin:$PATH"

# Conda
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# Add Julia to path
export PATH="/Applications/Julia-1.3.app/Contents/Resources/julia/bin:$PATH"

# Python3 (breaks SCAMPY, AND breaks terminal "OPEN" command):
# export PATH="$HOME/.julia/conda/3/bin"

# Python2.7
export PYTHONPATH="/usr/local/lib/python2.7:$PYTHONPATH"



# <<< conda init <<<

