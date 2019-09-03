FROM alpine:edge

RUN apk add g++ python make npm

RUN npm i spdlog

CMD /bin/sh -c "node -p 'require(\"spdlog\")'"
