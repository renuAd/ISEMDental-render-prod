#!/bin/bash
set -e

# Upgrade pip first
python -m pip install --upgrade pip

# Install dependencies
python -m pip install -r requirements.txt

# Collect static files
python manage.py collectstatic --noinput

# Apply migrations
python manage.py migrate
# Create a superuser if it doesn't exist
echo "from django.contrib.auth import get_user_model; User = get_user_model(); \
if not User.objects.filter(username='admin').exists(): \
    User.objects.create_superuser('admin', 'rhino@gmail.com', 'admin123')" | python manage.py shell