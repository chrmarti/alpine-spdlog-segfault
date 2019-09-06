FROM debian:8

RUN apt-get update

RUN apt-get install -y curl software-properties-common
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -

RUN apt-get install -y g++ python make

RUN apt-get install -y nodejs=10.16.3-1nodesource1

RUN npm i spdlog

CMD /bin/sh -c "node -p 'require(\"spdlog\")'"
