build/container: Dockerfile bin/build
	docker build --no-cache -t collectd .
	touch build/container

.PHONY: clean
clean:
	rm -rf build
