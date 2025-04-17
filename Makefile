VERSION = $(shell git rev-parse --short HEAD)

test:
	echo "Building image for $(VERSION)"
	podman build --tag heroku-buildpack-codeartifact:$(VERSION) .
