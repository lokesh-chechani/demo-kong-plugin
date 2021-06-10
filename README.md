[![Build Status][badge-travis-image]][badge-travis-url]

Hello Kong plugin
====================

This repository contains a very simple hello world Kong plugin which does following

 - Add request header 'hello-word' into request to upstream
 - Add response header 'bye-world' into the response to the consumer

This plugin was designed to work with the
[`kong-pongo`](https://github.com/Kong/kong-pongo) and
[`kong-vagrant`](https://github.com/Kong/kong-vagrant) development environments.

Please check out those repos `README` files for usage instructions.
