ipconfig | sed -n -e '/IPv4 Address/s/.\+: //p' | head -n 1 > display.tgt
set /p DISPLAY=<display.tgt

if [%SHELL%] == [/bin/bash] (
	set DOCKER=winpty docker
) else (
	set DOCKER=docker
)

%DOCKER% run -it --rm -e DISPLAY=%DISPLAY%:0.0 ff:0
