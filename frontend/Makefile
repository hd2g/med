OUTPUT_DIR := ./dist
OUTPUT_FILENAME := app.js
OUTPUT := $(OUTPUT_DIR)/$(OUTPUT_FILENAME)
INDEX_HTML := index.html

SRC := ./src/Main.elm

.PHONY: all build dev

all: build

build: build-elm build-css

build-css:
	npx tailwindcss -i static/style.css -o dist/style.css

build-elm:
	mkdir -p $(OUTPUT_DIR)
	cp $(INDEX_HTML) $(OUTPUT_DIR)
	elm make $(SRC) --output=$(OUTPUT)

dev:
	elm-live $(SRC) --hot -- --output=$(OUTPUT_DIR)/main.js
