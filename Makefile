SHELL := /bin/bash # Use bash syntax

run:
	docker-compose run --service-ports --rm app

destroy:
	docker-compose down
	docker rmi docker-compose-for-elixir-and-phoenix_app
