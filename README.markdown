# hashicorp_rpm_builder

### Requirements
1. Docker
2. Internet connection

### How to use

The most basic way is to run the `build_all.sh` script from root, this will call `generic/docker_build.sh` with two parameters the first is the lowercase name of the tool i.e. `consul` and the second is the version `0.7.5`. It is currently set to build:
* `consul - 0.7.5`
* `nomad - 0.5.4`
* `packer - 0.12.2`
* `terraform - 0.8.7`
* `vault - 0.6.4`

### Run individual builds

To run individual builds from the generic directory run `./docker_build.sh <NAME> <VERSION>`

Example consul build
```shell
cd generic
./docker_build.sh consul 0.7.5
```
