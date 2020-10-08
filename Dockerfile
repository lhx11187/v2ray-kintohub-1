FROM alpine

ENV CONFIG=https://raw.githubusercontent.com/kits18/v2fly-cf/kintohub/config.json

RUN apk update && apk --no-cache add ca-certificates unzip && \
    wget -c https://github.com/v2fly/v2ray-core/releases/download/v4.30.0/v2ray-linux-64.zip && \
    unzip v2ray-linux-64.zip && rm -f v2ray-linux-64.zip && \
    chmod 700 v2ray v2ctl
    
CMD ./v2ray -config $CONFIG
