# Running CentOS 6.10 on WSL2

In `%USER_HOME%/.wslconfig` (create, if it does not exist) place:
```
[wsl2]
kernelCommandLine=vsyscall=emulate
```

Select your WSL distro name you are working on using PowerShell or CMD:
```
wsl --list --versbose
```

Restart WSL distro:
```
wsl --shutdown
```

Open WSL shell and check kernel parameter `vsyscall=emulate` is present:
```
> cat /proc/cmdline 
initrd=\initrd.img panic=-1 pty.legacy_count=0 nr_cpus=4 vsyscall=emulate
```

Build container image:
```
docker build --tag=mycentos6 .
```

Start a container:
```
docker run -it --rm mycentos6
```
