FROM docker.io/library/amazoncorretto:17-alpine

ARG USER_ID
ARG USER_NAME
ARG GROUP_ID
ARG GROUP_NAME

RUN addgroup -g $GROUP_ID $GROUP_NAME
RUN adduser -G $GROUP_NAME -u $USER_ID -D $USER_NAME

ENV ENV="/home/$USER_NAME/.ashrc"
COPY ashrc $ENV

WORKDIR /usr/lib/gradle/
ADD https://services.gradle.org/distributions/gradle-8.14.1-bin.zip .
RUN unzip gradle-8.14.1-bin.zip
ENV PATH=$PATH:/usr/lib/gradle/gradle-8.14.1/bin/

CMD ["/bin/sh"]
