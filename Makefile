SRC = ./src
BIN = ./bin
OUTPUTS = $(BIN)/stripbase $(BIN)/basenum

.PHONY: all

all: $(BIN) $(OUTPUTS)  

$(BIN):
	mkdir $(BIN)

$(BIN)/%: $(SRC)/%.c
	$(CC) -o $@ $<

