#/usr/bin/env bash

if [ -z ${LEDGER_ROOT+x} ]; then
  echo "Set LEDGER_ROOT before running."
  exit 1
fi

NAME=rymitch/docker-ledger
docker run -it --rm -v $LEDGER_ROOT:/ledger $NAME $*
