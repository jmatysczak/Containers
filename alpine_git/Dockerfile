FROM docker.io/library/alpine:latest

RUN apk update \
	&& apk upgrade \
	&& apk add --no-cache git openssh openssh-keygen

ARG USER_ID
ARG USER_NAME
ARG GROUP_ID
ARG GROUP_NAME

RUN addgroup -g $GROUP_ID $GROUP_NAME
RUN adduser -G $GROUP_NAME -u $USER_ID -D $USER_NAME

ENV ENV="/home/$USER_NAME/.ashrc"
COPY ashrc $ENV

CMD ["/bin/sh"]
