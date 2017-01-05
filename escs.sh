##############################################################################
# initialize.
cd ~/projects/
git clone git@bitbucket.org:iogf/django-list-utils.git django-list-utils-code
##############################################################################

# push, django-list-utils, master.
cd ~/projects/django-listutils-code
# clean up all .pyc files. 
find . -name "*.pyc" -exec rm -f {} \;

git status
git add *
git commit -a
git push -u origin master
##############################################################################
# push, django-list-utils, alpha.

##############################################################################
# setup, virtualenv, django-list-utils.
cd ~/.virtualenvs/
ls -la
# by default, python3 has executable named python in arch linux.
virtualenv django-list-utils -p /usr/bin/python
##############################################################################
# activate, virtualenv, django-list-utils.
cd ~/.virtualenvs/
source django-list-utils/bin/activate
cd ~/projects/django-list-utils-code
##############################################################################
# install, django-list-utils, dependencies, virtualenv.
cd ~/.virtualenvs/
source django-list-utils/bin/activate
cd ~/projects/django-list-utils-code
pip install -r requirements.txt 
##############################################################################
# create, django-list-utils, project.
cd ~/projects/
django-admin startproject listutils listutils-code
##############################################################################
# create, core_app, app.
cd ~/projects/django-list-utils-code
python manage.py startapp listutils
##############################################################################




