## Vim

    Copy-Item settings\vim\_vimrc ~\
    New-Item -type directory ~\vimfiles\autoload, ~\vimfiles\bundle
    Invoke-RestMethod -uri https://tpo.pe/pathogen.vim -OutFile ~\vimfiles\autoload\pathogen.vim

git support requires vim to run in a bash context, https://stackoverflow.com/a/53357279/1108891. So, create a duplicate of `vimfiles`. 

   Copy-Item ~\vimfiles\ ~\.vim -Recurse 

vimrc file location: `https://stackoverflow.com/a/8977682/1108891` (i.e. run `:version` or `vim --version`) 

    :e $MYVIMRC
    :scriptnames
    
