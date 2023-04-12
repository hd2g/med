OUTPUT_DIR := ./dist
OUTPUT_FILENAME := index.html
OUTPUT := $(OUTPUT_DIR)/$(OUTPUT_FILENAME)

SRC := ./src/Main.elm

.PHONY: all build dev

all: build

build:
	mkdir -p $(OUTPUT_DIR)
	elm make $(SRC) --output=$(OUTPUT)

dev:
	elm-live $(SRC) --hot --open -- --output=$(OUTPUT_DIR)/main.js
