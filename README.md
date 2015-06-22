Generates `.ssh/config` file with aliases to running ssh docker containers.

See [docker-gen](https://github.com/jwilder/docker-gen) to understand the magic.

## Usage

Run as `docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v ~/.ssh/config:/app/config docker-gen-ssh-config`

Then connect to your containers as `ssh container-group-name` where `container-group-name` is the name of ssh container before the first `_`.
