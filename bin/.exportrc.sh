export DEFAULT_PG_VER="10"

export CATALINA_OPTS="-Xmx1024M -XX:MaxPermSize=128M -XX:+UseParNewGC -XX:+UseConcMarkSweepGC -XX:CMSInitiatingOccupancyFraction=75 -XX:+UseCMSInitiatingOccupancyOnly -XX:+HeapDumpOnOutOfMemoryError"
export SBT_OPTS="-Xms256m -Xmx1024m -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled"

export PG_HOME="/Applications/Postgres.app/Contents/Versions/$DEFAULT_PG_VER"
export MYSQL_HOME=/Applications/MySQLWorkbench.app/Contents/MacOS

export CLICOLOR=1
# export LSCOLORS=GxFxCxDxBxegedabagaced
export LSCOLORS=ExFxBxDxCxegedabagacad

export WORKSPACE_PATH="$HOME/workspaces"
export PATH="$HOME/bin:$PG_HOME/bin:$HOME/.rvm/bin:$MYSQL_HOME:$PATH"
