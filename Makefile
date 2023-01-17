.PHONY: run_website stop_website

run_website:
	docker build -t explorecalifornia.com . && \
	 docker run --rm --name explorecalifornia.com -p 5000:80 -d explorecalifornia.com

stop_website:
	docker stop explorecalifornia.com