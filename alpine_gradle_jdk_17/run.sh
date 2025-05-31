podman run \
	--userns=keep-id \
	--user $(id --user):$(id --group) \
	--interactive \
	--tty \
	--rm \
	--volume .:/development \
	--workdir /development \
	alpine_gradle_jdk_17
