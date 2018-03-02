FROM alpine:3.6

ENV VER=3.10
ENV CONFIG_JSON1={\"log\":{\"access\":\"\",\"error\":\"\",\"loglevel\":\"warning\"},\"inbound\":{\"protocol\":\"vmess\",\"port\":
ENV PORT=80
ENV CONFIG_JSON2=,\"settings\":{\"clients\":[{\"id\":\"
ENV UUID=91cb66ba-a373-43a0-8169-33d4eeaeb857
ENV CONFIG_JSON3=\",\"alterId\":64}]},\"streamSettings\":{\"network\":\"ws\"}},\"inboundDetour\":[],\"outbound\":{\"protocol\":\"freedom\",\"settings\":{}}}

RUN apk add --no-cache openssl \
  && cd /root \
  && wget -q https://github.com/v2ray/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip \
  && unzip v2ray-linux-64.zip \
  && cd v2ray-v$VER-linux-64 \
  && chmod +x v2ray v2ctl \
  && rm -rf /root/v2ray-linux-64.zip
 
COPY entrypoint.sh /root/
RUN chmod +x /root/entrypoint.sh

CMD /root/entrypoint.sh

