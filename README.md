# echo_http_status

A HTTP server to just echo given status code.

```console
$ curl localhost:8080/200 -i
HTTP/1.1 200 OK
Date: Thu, 05 Mar 2020 03:06:36 GMT
Content-Length: 16
Content-Type: text/plain; charset=utf-8

Hello, World 200

$ curl localhost:8080/503 -i
HTTP/1.1 503 Service Unavailable
Date: Thu, 05 Mar 2020 03:06:46 GMT
Content-Length: 16
Content-Type: text/plain; charset=utf-8

Hello, World 503
```

## Build

See [Makefile](./Makefile)


## LICENSE

[MIT](https://petitviolet.mit-license.org)
