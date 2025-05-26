podman run \
	--userns=keep-id \
	--user $(id --user):$(id --group) \
	--interactive \
	--tty \
	--rm \
	--volume .:/development \
	--workdir /development \
	--env USER_NAME \
	--env USER_EMAIL \
	alpine_git
