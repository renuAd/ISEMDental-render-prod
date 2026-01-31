#!/usr/bin/env bash
# Build script - STAY IN ROOT DIRECTORY

# Activate virtual environment
source .venv/bin/activate

# Run migrations from ROOT (manage.py is in isem/)
cd isem
python manage.py migrate --noinput
python manage.py collectstatic --noinput --clear
cd ..  # Back to root
