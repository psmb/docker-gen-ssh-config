Generates `.ssh/config` file with aliases to running ssh docker containers ([explained](http://nerderati.com/2011/03/17/simplify-your-life-with-an-ssh-config-file/)).

See [docker-gen](https://github.com/jwilder/docker-gen) to understand the magic.

## Usage

1. `docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v ~/.ssh/config:/app/config dimaip/docker-gen-ssh-config`
2. Connect to your ssh containers as `ssh container-group-name` where `container-group-name` is the name of ssh container before the first `_`.
