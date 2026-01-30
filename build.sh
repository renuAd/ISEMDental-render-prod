#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt

# Debug: Show where we are and what's here
echo "=== Current directory ==="
pwd
echo "=== Listing root files ==="
ls -la
echo "=== Listing isem folder ==="
ls -la isem/ || echo "isem folder not found!"
echo "=== Python path ==="
python -c "import sys; print('\n'.join(sys.path))"

python manage.py collectstatic --no-input
python manage.py migrate
