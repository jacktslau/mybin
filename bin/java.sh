function java_versions {
	reply=($(ls /Library/Java/JavaVirtualMachines | sed -E 's/jdk([0-9._]+)\.jdk/\1/'))
}

function jgv {
	echo $JAVA_VERSION
}

function java_version {
	jgv
}

function jsv {
	local rprompt=${RPROMPT/<java:$(java_version)>/}

	export JAVA_VERSION=$1
	export JAVA_HOME=`/usr/libexec/java_home -v $1`	

	export RPROMPT="<java:$JAVA_VERSION>$rprompt"
}

function java_set_version {
	jsv $1
}

compctl -K java_versions jsv
compctl -K java_versions java_set_version

jsv 1.8
