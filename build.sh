#!/usr/bin/env bash
set -e

# Install deps FIRST (Render creates .venv automatically)
pip install -r requirements.txt

# Use full Python path with site-packages
/opt/render/project/python/Python-3.11.0/bin/python isem/manage.py migrate --noinput
/opt/render/project/python/Python-3.11.0/bin/python isem/manage.py collectstatic --noinput --clear
