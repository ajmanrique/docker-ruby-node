# Ruby + Nodejs Dockerfile

This repository contains a Dockerfile of Ruby, nodejs and npm for Docker's automated build published to the public Docker Hub Registry.

## What's included
- Ruby 2.3.0
- Nodejs (latest)
- npm

### Installation
1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/ajmanrique/docker-ruby-node/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull ajmanrique/docker-ruby-node`

   (alternatively, you can build an image from Dockerfile: `docker build -t="ajmanrique/docker-ruby-node" github.com/ajmanrique/docker-ruby-node`)


### Usage

    docker run -it --rm ajmanrique/docker-ruby-node

#### Run `ruby`

    docker run -it --rm ajmanrique/docker-ruby-node ruby

#### Run `node`

    docker run -it --rm ajmanrique/docker-ruby-node node
