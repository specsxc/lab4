#!/bin/bash

#task1

if [[ "$1" == "--date" ]]; then
    date
else
    echo "Użycie: $0 --date"
fi

#task2

#Add .gitignore to ignore files containing 'log'

#task3

if [ "$1" == "--logs" ] && [ $# == 1 ]; then
    for i in {1..100}; do
        nazwa_pliku="log${i}.txt"
        echo "Nazwa pliku: $nazwa_pliku" > "$nazwa_pliku"
        echo "Nazwa skryptu: $0" >> "$nazwa_pliku"
        echo "Data utworzenia: $(date)" >> "$nazwa_pliku"
    done
    echo "Utworzono 100 plików logx.txt"
else
    echo "Użycie: $0 --logs"
fi

#task4

if [ $# == 2 ] && [ "$1" == "--logs" ]; then
    liczba_plikow=$2
    for i in $(seq 1 "$liczba_plikow"); do
        nazwa_pliku="log${i}.txt"
        echo "Nazwa pliku: $nazwa_pliku" > "$nazwa_pliku"
        echo "Nazwa skryptu: $0" >> "$nazwa_pliku"
        echo "Data utworzenia: $(date)" >> "$nazwa_pliku"
    done
    echo "Utworzono $liczba_plikow plików logx.txt"
else
    echo "Użycie: skrypt.sh --logs <liczba_plików>"
fi