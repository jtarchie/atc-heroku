FROM ubuntu

RUN apt-get -y upgrade && apt-get -y install wget

RUN wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
RUN heroku plugins:install heroku-builds

RUN cd /tmp && \
    wget https://github.com/digitalocean/doctl/releases/download/v1.0.1/doctl-1.0.1-linux-amd64.tar.gz && \
    tar xf doctl-1.0.1-linux-amd64.tar.gz && \
    mv ./doctl /usr/local/bin
