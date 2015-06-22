Generates `.ssh/config` file with aliases to running ssh docker containers.

See [docker-gen](https://github.com/jwilder/docker-gen) to understand the magic.

## Usage

1. `docker pull dimaip/docker-gen-ssh-config`
2. `docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v ~/.ssh/config:/app/config dimaip/docker-gen-ssh-config`
3. Connect to your ssh containers as `ssh container-group-name` where `container-group-name` is the name of ssh container before the first `_`.
