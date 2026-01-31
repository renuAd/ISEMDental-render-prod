#!/usr/bin/env bash
set -e

cd /opt/render/project/src
export PYTHONPATH=/opt/render/project/src:$PYTHONPATH

exec gunicorn isem.isem.wsgi:application --bind 0.0.0.0:$PORT --workers 1
