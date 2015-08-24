Openresty Redis-backed proxy example
=======================================

Usage
-----------

You can use this image built on quay.io.

```
docker run --name openresty -i -t -d -p 80:80 -p 6379:6379 quay.io/ainoya/openresty-dynamic-upstream-proxy
```

Reference
----------

- [This repository is copied from this article for registering quay.io](http://masato.github.io/2014/08/06/docker-reverse-proxy-xipio-openresty-sinatra/)

