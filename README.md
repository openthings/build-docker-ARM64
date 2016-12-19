# build-docker-ARM64
**Notice: This project is developing, not for production.**

Build toolchain for Docker on ARM64.

## Include project:
* Docker base image of ubuntu xenial (ARM64).
- ubuntu-root
- ubuntu-rock
- ubuntu-golang
- ubuntu-nodejs

* Docker Latest (ARM64)
- docker (1.14.0)
- containerd
- runc

* Weave Net (ARM64)
- weave
- scope
- cortex
- flux

## Supported SoC Board:
- 96Boards, Snapdragon 410C
- 96Boards, Hikey Kirin-620

## TODO:
- setup-docker shell script.
