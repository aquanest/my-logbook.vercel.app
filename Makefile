# Makefile

.PHONY: build
build:
	hugo -D --gc

.PHONY: release
release:
	git add .
	git commit -m "Release"
	git push origin main

