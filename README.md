# 一键部署 v2ray 到 heroku  [![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

1.部署时选择 v2ray core 的版本和Vmess协议的UUID（"alterId"默认为64）。

2.服务端部署后，应 open app ，显示 Bad Request，表示部署成功。

3.客户端可使用websocket+tls传输协议或者 websocket+vmess（auto加密）。



# 参考 
https://github.com/v2ray/v2ray-core

https://github.com/onplus/v2hero/
