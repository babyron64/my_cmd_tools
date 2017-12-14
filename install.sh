#!/bin/bash
<<<<<<< HEAD
list="mkexe gettmp getrow lbtex basenum stripbase"
make
=======
list="mkexe gettmp getrow lbtex cb"
>>>>>>> 6bc0be3ae7058faa14ad54ca374a9dca51f9f0cc
for i in $*; do
    if [ ! "`echo $list | grep $i`" ]; then
        echo "$i"' is not a tool name' >&2
        continue
    fi
    tools+=$i
done
if [ $# -eq 0 ]; then
    tools=$list
fi

for i in $tools; do
    if [ -f /usr/local/bin/$i ]; then
        echo $i" is already installed or another program with the same name already exists" >&2
        continue
    fi
    for s in 1 5; do
        if [ -f ./man/$i.$s ]; then
            if [ -f /usr/local/share/man/man$s/$i.$s ]; then
                echo "The man file for "$i", "$i.$s", already exists. It may be one for another program." >&2
                continue
            fi
            cp ./man/$i.$s /usr/local/share/man/man$s/
        fi
    done

    cp $i /usr/local/bin/
    installed+=$i
    echo $installed >> catalog
done 

if [ ! "$installed" -a  -n "$installed" ]; then
    echo "Successfully installed: "$installed >&2
fi

exit 0
