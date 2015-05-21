#/usr/bin/env bash

if [ -z ${LEDGER_ROOT+x} ]; then
  LEDGER_ROOT=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd -P)/ledger
fi

NAME=rymitch/docker-base
docker run -it --rm -v $LEDGER_ROOT:/ledger $NAME $*
