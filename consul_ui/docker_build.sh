#!/bin/bash
docker run -v `pwd`:/fpm -e VERSION=$1 -w /fpm -ti cyberious/fpm make
mkdir -p el7
mkdir -p el6
mv *el6*.rpm ./el6/
mv *el7*.rpm ./el7/
