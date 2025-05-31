### Collection of containers used for development.


> [!NOTE]
> It appears that it is not possible, or at least not easy, to use the same non-root user
> in rootless Docker and on the host and have that user be able to read/write volumes/mounts:
> https://github.com/mamba-org/micromamba-docker/issues/407#issuecomment-2088523507
> So, these containers use Podman instead.


#### alpine_git
An Alpine based container whose sole purpose is to provide git. It isolates the user's
public/private key from the host system and other containers that might contain untrusted
third party code.

#### alpine_gradle_jdk_17
An Alpine based container whose sole purpose is to provide JDK 17 and Gradle.
