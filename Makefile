VERSION = $(shell git rev-parse --short HEAD)

test:
	echo "Building image for $(VERSION)"
	podman build --tag heroku-buildpack-jre:$(VERSION) .
	podman run heroku-buildpack-jre:$(VERSION) /.jdk/bin/java --version
