#!/bin/bash

pwd
ls
# Starts datomic transactor
./bin/transactor -Ddatomic.printConnectionInfo=true config/dev-transactor.properties &

# Starts datomic console
./bin/console -p 8089 dev datomic:dev://localhost:4334/ &

cat config/dev-transactor.properties

wait -n

exit $?