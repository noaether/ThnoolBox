# CalculaThneed

## How to compile to .exe
- Install [Python3](https://www.python.org/downloads/)
- Populate the `FULL PATH TO ICON FILE` field in [calculator.spec.example](CalculaThneed/calculator.spec.example)
- Populate the `APPNAME` field in [calculator.spec.example](CalculaThneed/calculator.spec.example)
- Rename [calculator.spec.example](CalculaThneed/calculator.spec.example) to `calculator.spec`
- Install the requirements listed in [requirements.txt](CalculaThneed/requirements.txt)
```
pip3 install -r requirements.txt
```
- Change CalculaThneed to your app's name in [calculator.py](CalculaThneed/calculator.py)
- Change CalculaThneed to your app's name in [MainWindow.py](CalculaThneed/MainWindow.py) at/around line 300
- You can edit every color in [MainWindow.py](CalculaThneed/MainWindow.py), in the SPREADHSHEETS section
- Launch the program and check everything is to your liking.
```
python3 calculator.py
```
- Compile to .exe with pyinstaller
```
pyinstaller calculator.spec -i [RELATIVE PATH TO ICON]
```
