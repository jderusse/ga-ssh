FROM alpine:3.10

LABEL "maintainer"="Jérémy Derussé <jeremy@derusse.com>"
LABEL "repository"="http://github.com/jderusse/ga-ssh"

LABEL "com.github.actions.name"="SSH Command"
LABEL "com.github.actions.description"="Run command via SSH."
LABEL "com.github.actions.icon"="terminal"
LABEL "com.github.actions.color"="orange"

RUN apk add --no-cache \
        openssh-client

ADD entrypoint /entrypoint
ENTRYPOINT ["/entrypoint"]
