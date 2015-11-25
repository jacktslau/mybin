export DEFAULT_PG_VER="9.4"

export CATALINA_OPTS="-Xmx1024M -XX:MaxPermSize=128M -XX:+UseParNewGC -XX:+UseConcMarkSweepGC -XX:CMSInitiatingOccupancyFraction=75 -XX:+UseCMSInitiatingOccupancyOnly -XX:+HeapDumpOnOutOfMemoryError"
export SBT_OPTS="-Xms256m -Xmx1024m -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled"

export HEROKU_HOME='/usr/local/heroku'
export SUBLIME_HOME='/Applications/Sublime Text.app/Contents/SharedSupport'
export PG_HOME="/Applications/Postgres.app/Contents/Versions/$DEFAULT_PG_VER"

export CLICOLOR=1
# export LSCOLORS=GxFxCxDxBxegedabagaced
export LSCOLORS=ExFxBxDxCxegedabagacad

export PATH="$HOME/bin:$PG_HOME/bin:$SUBLIME_HOME/bin:$HOME/.rvm/bin:$HEROKU_HOME/bin:$PATH"
