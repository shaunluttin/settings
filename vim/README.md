## Vim

Windows

```powershell
Copy-Item settings\vim\_vimrc ~\
```

Linux
```bash
cp settings/vim/_vimrc ~/.vimrc
```

vimrc file location: `https://stackoverflow.com/a/8977682/1108891` (i.e. run `:version` or `vim --version`) 

```
:e $MYVIMRC
:echo $MYVIMRC
:scriptnames
```
    
