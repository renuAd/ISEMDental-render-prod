#!/bin/bash
set -e

# Upgrade pip first
python -m pip install --upgrade pip

# Install dependencies
python -m pip install -r requirements.txt
cd isem
# Collect static files
python manage.py collectstatic --noinput

# Apply migrations
python manage.py migrate
# Create a superuser if it doesn't exist
