all:
	docker build -f Dockerfile -t atc-heroku/cli .
	docker run -v `pwd`:/atc-heroku -w /atc-heroku -it atc-heroku/cli bash
