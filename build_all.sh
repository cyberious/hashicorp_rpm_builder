pushd generic
rm -rf *.rpm
rm -rf *.zip
../consul_ui/docker_build.sh 0.8.0
./docker_build.sh consul 0.8.0
./docker_build.sh nomad 0.5.6
./docker_build.sh packer 1.0.0
./docker_build.sh terraform 0.9.2
./docker_build.sh vault 0.7.0
popd
