#!/usr/bin/env bash
# Build script for Render

# Activate virtual environment
set -o allexport
source .venv/bin/activate
set +o allexport

cd isem  # ← ENTER THE DJANGO PROJECT FOLDER

# Install Python dependencies
pip install -r ../requirements.txt

# Run Django migrations
python manage.py migrate --noinput

# Collect static files
python manage.py collectstatic --noinput --clear
