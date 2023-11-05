@echo off

:: Install virtualenvwrapper-win
pip install virtualenvwrapper-win

:: Create and activate virtual environment
virtualenv translationEnv
call translationEnv\Scripts\activate
if errorlevel 1 (
    echo Failed to activate the virtual environment.
    exit /b 1
)

:: Install project dependencies
pip install -r requirements.txt

:: Navigate to the project directory
cd project
cd project

:: Set up environment variables
echo SECRET_KEY=hndh2b7847%%^BV%%^!^!)yb > .env

:: Use PowerShell to show a folder selection dialog
for /f "delims=" %%I in ('powershell -ExecutionPolicy Bypass -File "%~dp0SelectFolder.ps1"') do set "MODELS_PATH=%%I"

:: Set up Models directory PATH
cd ..
cd translation
echo MODELS_PATH=%MODELS_PATH% > .env
cd ..

:: Run the development server
python manage.py migrate
python manage.py runserver

:: Additional pause to identify if the script exits immediately
pause
