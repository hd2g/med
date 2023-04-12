OUTPUT_DIR := ./dist
OUTPUT_FILENAME := index.html
OUTPUT := $(OUTPUT_DIR)/$(OUTPUT_FILENAME)

SRC := ./src/Main.elm

.PHONY: all build

all: build

build:
	mkdir -p $(OUTPUT_DIR)
	elm make $(SRC) --output=$(OUTPUT)
