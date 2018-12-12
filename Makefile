BIN=$(GOPATH)/bin
GB=$(BIN)/gb

.PHONY: deps
deps:	
	go get github.com/constabulary/gb/...
	$(GB) vendor restore

.PHONY: build
build:
	$(GB) test
	$(GB) build
