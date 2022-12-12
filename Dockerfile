ARG DAGGER_VERSION=0.2.232
ARG DOCKER_VERSION=20.10.17



FROM alpine AS dagger

RUN apk add --no-cache curl

WORKDIR  /usr/local
RUN curl -L https://dl.dagger.io/dagger-cue/install.sh | VERSION=${DAGGER_VERSION} sh
 

FROM docker:${DOCKER_VERSION}

COPY --from=dagger /usr/local/bin/dagger-cue /usr/local/bin/dagger-cue
ENTRYPOINT [ "/usr/local/bin/dagger-cue" ]
