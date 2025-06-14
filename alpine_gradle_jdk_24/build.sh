podman build \
	--build-arg USER_ID=$(id --user) \
	--build-arg USER_NAME=$(id --user --name) \
	--build-arg GROUP_ID=$(id --group) \
	--build-arg GROUP_NAME=$(id --group --name) \
	--file Dockerfile \
	--tag alpine_gradle_jdk_24 \
	.
