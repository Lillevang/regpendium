CRYSTAL_BIN ?= crystal
SHARDS_BIN ?= shards
PREFIX ?= /usr/local
SHARD_BIN ?= ../../bin

build: bin/regpendium
bin/regpendium:
	$(SHARDS_BIN) build $(CRFLAGS)
clean:
	rm -f ./bin/regpendium ./bin/regpendium.dwarf
install: build
	mkdir -p $(PREFIX)/bin
bin: build
	mkdir -p $(SHARD_BIN)
	cp ./bin/regpendium $(SHARD_BIN)
run_file:
	cp -n ./bin/regpendium.cr $(SHARD_BIN) || true
test: build
	$(CRYSTAL_BIN) spec
	./bin/regpendium --all