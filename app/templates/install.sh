# Updated for Python 3 support
# ./install.sh -p /path/to/python3 --no-setuptools

python virtualenv.py $@ flask
if [ ! -f flask/bin/pip ]; then
  flask/bin/python get-pip.py
fi

flask/bin/pip install setuptools --upgrade
flask/bin/pip install flask==0.10.1
flask/bin/pip install flask-login
flask/bin/pip install sqlalchemy==1.0.4
flask/bin/pip install flask-sqlalchemy
flask/bin/pip install sqlalchemy-migrate
flask/bin/pip install pytz
flask/bin/pip install flask-babel==0.8
flask/bin/pip install flup
