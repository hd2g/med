OUTPUT_DIR := ./dist
OUTPUT_FILENAME := app.js
OUTPUT := $(OUTPUT_DIR)/$(OUTPUT_FILENAME)
INDEX_HTML := index.html

SRC := ./src/Main.elm

.PHONY: all build dev

all: build

build:
	mkdir -p $(OUTPUT_DIR)
	cp $(INDEX_HTML) $(OUTPUT_DIR)
	elm make $(SRC) --output=$(OUTPUT)
	npx tailwindcss -i static/style.css -o dist/style.css

dev:
	elm-live $(SRC) --hot --open -- --output=$(OUTPUT_DIR)/main.js
