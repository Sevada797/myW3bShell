REM  Download and unzip ngrok client
curl https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-windows-amd64.zip -o ngrok.zip
tar -xf %cd%\ngrok.zip

REM Download and install PHP
curl https://windows.php.net/downloads/releases/php-devel-pack-8.3.2-Win32-vs16-x64.zip -o php.zip
tar -xf %cd%\php.zip

REM Start the web shell locally
echo Starting the web shell locally
%cd%\php\php.exe -S 127.0.0.1:7797 -t ./
