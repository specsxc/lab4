#!/bin/bash

#task1

data=$1

if [[ "$data" == "--date" ]]; then
    date
else
    echo "Użycie: $0 --date"
fi

#task2

#Add .gitignore to ignore files containing 'log'
