#!/usr/bin/env bash

if [[ -z "${VIRTUAL_ENV}" ]]; then
    source "$(pipenv --venv)/bin/activate"
fi

exec "$@"
