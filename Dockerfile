FROM ubuntu

RUN apt-get -y update
RUN apt-get -y install build-essential zlibc zlib1g-dev ruby ruby-dev openssl libxslt-dev libxml2-dev libssl-dev libreadline6 libreadline6-dev libyaml-dev libsqlite3-dev sqlite3

ADD https://s3.amazonaws.com/bosh-init-artifacts/bosh-init-0.0.81-linux-amd64 /usr/local/bin
RUN mv /usr/local/bin/bosh-init-0.0.81-linux-amd64 /usr/local/bin/bosh-init
RUN chmod +x /usr/local/bin/bosh-init

RUN wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
RUN heroku plugins:install heroku-builds
