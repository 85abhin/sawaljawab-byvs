#!/bin/bash
set -e

echo "Deployment started ..."

# Pull the latest version of the app
git pull origin main
echo "New changes copied to server !"

# Activate Virtual Env
source sj/bin/activate
echo "Virtual env 'sj' Activated !"

echo "Installing Dependencies..."
pip install -r requirements.txt --no-input

echo "Serving Static Files..."
python manage.py collectstatic --noinput

echo "Running Database migration"
python manage.py makemigrations
python manage.py migrate

# Deactivate Virtual Env
deactivate
echo "Virtual env 'sj' Deactivated !"

# Reloading Application So New Changes could reflect on website
pushd sawaljawab
touch wsgi.py
popd

echo "Deployment Finished!"