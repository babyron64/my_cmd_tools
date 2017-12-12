# mkexe
## NAME
       mkexe - generate an executable file with a shebang

## SYNOPSIS
       mkexe  [-d  directory]  [-e  extension] [-t temporary] [-f forced] [?
       help] filename

## DESCRIPTION
       mkexe makes an executable file with an appropreate shebang, according
       to  the extension of the filename. And then, add the executable modi-
       fier to the file with normal previlege. An extension can  be  explic-
       itly specified by -e option. When you want to create your own command
       with shell script, you can use .cmd extension instead of  .sh,  which
       makes  the  file created at the /usr/local/bin. For more details, see
       -e option.

## OPTIONS
       Here is a summary of all the options.

       -ddirectory
              specify the directory that contains  the  program  to  execute
              scripts.

       -eextension
              this  extension  overrides the default extension, which is the
              filename's extension.

       -t     make a temporary script under /var/tmp/mkexe. It  deppends  on
              the file extension (eg. .sh or .py) where the file is created.
              To change the tmp directory, edit this command's script. If  a
              file  with  the same name already exists in the tmp directory,
              it will be overwritten.

       -f     force to make the file even if it already exists. The old file
              will be overwritten.

## EXTENSION SPECIFIC INFO
       py     shebang: /usr/local/bin/python3
              tmp location: /var/tmp/mkexe/python

       sh     shebang: /bin/bash
              tmp location: /var/tmp/mkexe/sh

       scm    shebang: /usr/local/bin/gosh
              tmp location: /var/tmp/mkexe/scm

       hs     shebang: /usr/bin/env runhaskell
              tmp location: /var/tmp/mkexe/haskell

       cmd    shebang: /bin/bash
              tmp location: /var/tmp/mkexe/sh

## AUTHORS
       Baba Tatsuya
