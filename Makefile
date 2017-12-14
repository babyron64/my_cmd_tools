SRC = ./src
OUTPUTS = stripbase basenum

.PHONY: all

all: $(OUTPUTS)  

%: $(SRC)/%.c
	$(CC) -o $@ $<

