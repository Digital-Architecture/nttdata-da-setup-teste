FROM alpine

ARG GH_TOKEN
ARG DEPART
ARG APP
ARG TEMPLATE

RUN apk update && apk upgrade && \
    apk add curl tar bash git 

RUN apk add github-cli

COPY create_repo.sh /create_repo.sh 

RUN chmod +x create_repo.sh

ENTRYPOINT ["/create_repo.sh"]
 

