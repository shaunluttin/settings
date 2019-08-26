## Vim

    Copy-Item settings\vim\_vimrc ~\
    New-Item -type directory ~\vimfiles\autoload, ~\vimfiles\bundle
    Invoke-RestMethod -uri https://tpo.pe/pathogen.vim -OutFile ~\vimfiles\autoload\pathogen.vim

vimrc file location: `https://stackoverflow.com/a/8977682/1108891` (i.e. run `:version` or `vim --version`) 

    :e $MYVIMRC
    :echo $MYVIMRC
    :scriptnames
    
