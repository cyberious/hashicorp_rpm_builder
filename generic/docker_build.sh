#!/bin/bash
docker run -v `pwd`:/fpm -e NAME=$1 -e VERSION=$2 -w /fpm -ti cyberious/fpm make
mv *el6*rpm el6/
mv *el7*rpm el7/
