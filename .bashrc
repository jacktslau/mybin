export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

source ~/bin/helpers.sh
source ~/bin/.iterm2_helpers.sh
source ~/bin/.aliasrc.sh
source ~/bin/.exportrc.sh

function grepServiceByPort() {
	grep "\s$1/" /etc/services
}

# ssh config hostname auto complete
complete -o default -o nospace -W "$(/usr/bin/env ruby -ne 'puts $_.split(/[,\s]+/)[1..-1].reject{|host| host.match(/\*|\?/)} if $_.match(/^\s*Host\s+/);' < $HOME/.ssh/config)" scp sftp ssh ssh-copy-id

alias con='tail -40 -f /var/log/system.log'
alias top='top -d -u -s 10'
alias serviceport=grepServiceByPort

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

