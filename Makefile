BIN_DIR = bin

APPS = colnum \
	   cols \
	   splitstr \
	   strlen \
	   zwcl

.PHONY: all
all:

.PHONY: install
install: $(BIN_DIR) $(APPS)

.PHONY: $(APPS)
$(APPS): $(BIN_DIR)
	@cp -v $@ $^

.PHONY: $(BIN_DIR)
$(BIN_DIR):
	@mkdir -vp $@

.PHONY: test
test:
	@cd test; sh test.sh

