## 一键部署 V2Ray 到 Heroku  [![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

> 1. 部署时VLess协议的`UUID`默认`91cb66ba-a373-43a0-8169-33d4eeaeb857`。

> 2. 服务端部署后，应`open app`，显示`Bad Request`，表示部署成功。

> 3. 客户端可使用`Websocket`端口`80`，或`Websocket+TLS`端口`443`传输。

> 4. 部署到VPS时，域名变量`DOMAIN`和`docker cp`拷入证书即可开启TLS。
> ```sh
> /v2ray/cert.pem
> /v2ray/key.pem
> ```

[V2ray-core下载](https://github.com/zhangkai8782/v2ray-heroku/releases/tag/v4.40.1)

### 参考 
*https://github.com/v2fly/v2ray-core*

*https://github.com/onplus/v2hero*
