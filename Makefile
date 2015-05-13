NAME := rymitch/docker-ledger
ROOT := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))

all: build

.build: .
	@docker build -t $(NAME) .
	@docker inspect -f '{{.Id}}' $(NAME) > .build

build: .build

clean:
	@$(RM) .build

run: build
	@docker run -it --rm -v $(ROOT)home:/root $(NAME) $*

.PHONY: all build clean run
