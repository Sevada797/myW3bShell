# myW3bShell
Web shell

# Installation for Windows

run download.cmd, this will install ngrok, php, and start 
local web server at port 7797 , with root directory being ```myW3bShell\```
after run the other cmd file named 'ngrok.cmd', this will make your web server publicly available

# Instalation for linux
Ok here just run 'run.sh' like this
```bash run.sh```

if things don't work try ```chmod +x run.sh && ./run.sh```

# Things that might not work

Okay so as I didn't tested .cmd files, and I won't uninstall php and ngrok to try installing them again with this codes,
In case of smth you can install everything manually,

But what am I suspecting not to work

1) .cmd files for unzipping might not work
2) possible path problems may arise
3) the ngrok authtoken might not work, I commented there what to do in 'windows\download.cmd'
4) in 'linux\run.sh' line where I run  ```php -S 127.0.0.1:7797 -t ./ && ngrok http 7797``` the second command might not work, I can't explain with words why, anyways
if it doesn't work just run this ```ngrok http 7797``` in another terminal
