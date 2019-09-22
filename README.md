# pipenv-docker-development

docker template for fast development using pipenv.

It is really annoying to rebuild docker image after installing new package by pipenv while you develop.

This template solves this problem by installing python packages after `docker-compose build` and cache those into Docker Volume.

pipenv is coupled tightlly with virtualenv so that you need to activate virutalenv before execute python script.

This template solves this problem by hooking login using `ENTRYPOINT` of Dockerfile and `.bashrc` so that you are automatically logged in to pipenv environment same as `pipenv shell`.

## for fast development

Use `Dockerfile.dev`.

Install pip packages using pipenv virtualenv and cache environments to Docker Volume.

Install python environments at ENTRYPOINT using [Entrykit](https://github.com/progrium/entrykit).

You are automatically logged in pipenv environment at following use cases.

- `docker-compose run --rm app bash`
- `docker-compose up -d && docker-compose exec app bash`
- `command` in docker-compose.yml

## for production

Use `Dockerfile`.

Install pip packages by `pipenv install --system --deploy` to global (system) environment.

Avoid redundant virtualization (Docker, virtualenv in pipenv).

## LICENSE

MIT
