## python3.12 -m venv venv
python -V
>> Python 3.12.11

source venv/bin/activate 
pip install numpy
pip list
pip install numpy==2.1.0
pip install -U numpy
python -m pip install -U pip # pipを最新化

pip list -o, --outdated
pip freeze > requirements.txt
pip install -r requirements.txt

pip install pycodestyle
pip install flake8
pip install ruff
pip install ipython
pip install jupyterlab==4.3.5
jupyter lab
jupyter lab --port=8080

