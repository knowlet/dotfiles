alias ll="ls -ahl"
alias ls="ls -G"
alias rr="rm -rf"
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'
#PS1="\w \$ "
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1="\u@\h \W\$(parse_git_branch)\$ "
#stty cs8 -istrip
#stty pass8
export HISTSIZE=1500
export HISTFILESIZE=1500
export LANG=zh_TW.UTF-8
export LC_CTYPE=zh_TW.UTF-8
export PATH=${PATH}:~/android-sdks/platform-tools
export GOPATH=$HOME/golang
if [ -f `brew --prefix`/etc/bash_completion ]; then
	`brew --prefix`/etc/bash_completion
fi
# The next line updates PATH for the Google Cloud SDK.
source '/Users/Albert/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/Users/Albert/google-cloud-sdk/completion.bash.inc'
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/gcc-4.8.0-qt-4.8.4-for-mingw32/win32-gcc/bin:/usr/local/sbin:/Users/Albert/google-cloud-sdk/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/go/bin:/Users/Albert/android-sdks/platform-tools
