REM  COMMENT SECTION
REM  I got this free authtoken from this list here https://gist.github.com/aels/4b26aa8bd9db8108e171ffbe81cdf776
REM  in case of ngrok failing try other tokens or register at ngrok.com and get free authtoken

%cd%\ngrok\ngrok.exe config add-authtoken 26p3rvZocfT7VzraejQNoCjPNN6_6UqEGG1izGcbE8ewtBchT
%cd%\ngrok\ngrok.exe http 7797
