#!/bin/bash

#project part 2
#v1.1

case "$1" in
    -d|--date)
        date
    ;;
    -l|--logs)
        liczba_plikow=${2:-100}
        for ((i=1; i<=liczba_plikow; i++)); do
            nazwa_pliku="log${i}.txt"
            echo "Nazwa pliku: $nazwa_pliku, Nazwa skryptu: $0, Data utworzenia: $(date)" > "$nazwa_pliku"
        done
        echo "Utworzono $liczba_plikow plików logx.txt"
    ;;
    -h|--help)
        echo "Użycie: $0 [Opcje]"
        echo "--date,       Wyświetla dzisiejszą date"
        echo "--logs,   [liczba]    Tworzy podaną liczbę plików tekstowych 'log' (domyślnie 100)"
        echo "--help,       Pokazuje instrukcje obsługi"
    ;;
    *)
        echo "Użycie: $0 --help więcej informacji"
    ;;
esac
