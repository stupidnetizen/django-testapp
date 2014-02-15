#!/bin/sh

DOWNLOAD_DIR=./src

# test for git and hg commands
for cmd in git hg; do
    command -v ${cmd} >/dev/null || { echo "sh: command not found: ${cmd}"; exit 1; }
done

<<<<<<< HEAD
# download all packages to ./src (default)
pip install --no-install -r requirements.txt

cp -r ${DOWNLOAD_DIR}/django-autoload/autoload ./autoload
cp -r ${DOWNLOAD_DIR}/django-dbindexer/dbindexer ./dbindexer
cp -r ${DOWNLOAD_DIR}/django-nonrel/django ./django
cp -r ${DOWNLOAD_DIR}/djangoappengine/djangoappengine ./djangoappengine
cp -r ${DOWNLOAD_DIR}/djangotoolbox/djangotoolbox ./djangotoolbox

[ -f ${DOWNLOAD_DIR}/pip-delete-this-directory.txt ] && rm -rf ${DOWNLOAD_DIR}

echo "Now run:
./manage.py runserver

To launch this app. If you want access to django /admin, run also:
./manage.py createsuperuser

And then login in <your_app_ip>/admin, probably http://127.0.0.1:8000/admin"


=======
unzip -q build/django-autoload-0.01.zip -d build
unzip -q build/django-dbindexer-0.3.zip -d build
unzip -q build/django-nonrel-1.5.zip -d build
unzip -q build/djangoappengine-1.0.zip -d build
unzip -q build/djangotoolbox-0.9.2.zip -d build

cp -r build/django-autoload/autoload ./autoload
cp -r build/django-dbindexer/dbindexer ./dbindexer
cp -r build/django-nonrel/django ./django
cp -r build/djangoappengine/djangoappengine ./djangoappengine
cp -r build/djangotoolbox/djangotoolbox ./djangotoolbox
>>>>>>> django-testapp/testapp-1.5-beta
