pushd generic
rm -rf *.rpm
rm -rf *.zip
./docker_build.sh consul 0.7.5
./docker_build.sh nomad 0.5.4
./docker_build.sh packer 0.12.2
./docker_build.sh terraform 0.8.7
./docker_build.sh vault 0.6.4
popd
