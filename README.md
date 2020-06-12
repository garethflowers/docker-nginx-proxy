[![Build Status][I1]][1] [![Image Layers][I2]][2] [![Docker Pulls][I3]][3]

# Nginx Reverse Proxy

Docker based Nginx instance configured for use as a Reverse Proxy.

## How to use this image

### Start a Nginx instance

To start a container use the following:
```sh
docker run \
	--name my-nginx-proxy \
	garethflowers/nginx-proxy
```

## License

*	Nginx is released under the [2-clause BSD License][4]
*	This image is released under the [MIT License][5]

[I1]: https://travis-ci.org/garethflowers/docker-nginx-proxy.svg?branch=master
[I2]: https://images.microbadger.com/badges/image/garethflowers/nginx-proxy.svg
[I3]: https://img.shields.io/docker/pulls/garethflowers/nginx-proxy.svg
[1]: https://travis-ci.org/garethflowers/docker-nginx-proxy
[2]: https://microbadger.com/images/garethflowers/nginx-proxy
[3]: https://store.docker.com/community/images/garethflowers/nginx-proxy
[4]: https://nginx.org/LICENSE
[5]: https://raw.githubusercontent.com/garethflowers/docker-nginx-proxy/master/LICENSE
