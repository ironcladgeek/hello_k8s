.PHONY: run_website

run_website:
	docker build -t explorecalifornia.com . && \
	 docker run --rm --name explorecalifornia.com -p 5000:80 explorecalifornia.com
