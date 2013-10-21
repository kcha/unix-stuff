BIN_DIR = bin
SRC_DIR = src

APPS = colnum \
	   cols \
	   splitstr \
	   strlen \
	   zwcl

.PHONY: all
all:

.PHONY: install
install: $(BIN_DIR) $(addprefix $(BIN_DIR)/, $(APPS))
	@chmod u+x $(BIN_DIR)/*

.PHONY: $(APPS)
$(BIN_DIR)/colnum: $(SRC_DIR)/colnum
	@cp -v $^ $@

$(BIN_DIR)/cols: $(SRC_DIR)/cols
	@cp -v $^ $@
	
$(BIN_DIR)/splitstr: $(SRC_DIR)/splitstr
	@cp -v $^ $@

$(BIN_DIR)/strlen: $(SRC_DIR)/strlen
	@cp -v $^ $@

$(BIN_DIR)/zwcl: $(SRC_DIR)/zwcl
	@cp -v $^ $@

.PHONY: $(BIN_DIR)
$(BIN_DIR):
	@mkdir -vp $@

.PHONY: test
test:
	@cd test; sh test.sh

.PHONY: clean
clean:
	@rm -vf $(BIN_DIR)/*
