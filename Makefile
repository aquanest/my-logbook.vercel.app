# Makefile

.PHONY: build
build:
	hugo -D --gc

.PHONY: serve
serve:
	hugo server --disableFastRender

.PHONY: release
release:
	git push origin main
