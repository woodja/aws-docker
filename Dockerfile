FROM alpine:3.5

RUN apk --no-cache add ca-certificates curl bash git openrc jq py2-pip docker && \
  pip install awscli

COPY ecs-deploy /usr/bin/ecs-deploy
RUN chmod a+x /usr/bin/ecs-deploy

RUN rc-update add docker boot

