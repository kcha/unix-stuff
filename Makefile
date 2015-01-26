BIN_DIR = bin

APPS = colnum \
	   cols \
	   hhead \
	   splitstr \
	   strlen \
	   zwcl

.PHONY: all
all:

.PHONY: test
test:
	@cd test; sh test.sh
