#!/usr/bin/env bash
set -e

# Stay in ROOT, set PYTHONPATH, activate venv
export PYTHONPATH=/opt/render/project/src:$PYTHONPATH
source .venv/bin/activate

# Run Django commands from ROOT (manage.py is in isem/)
python isem/manage.py migrate --noinput
python isem/manage.py collectstatic --noinput --clear
