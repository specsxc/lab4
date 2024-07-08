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
    -i|--init)
        git clone https://github.com/specsxc/lab4.git
        PATH="$PATH:$(pwd)/repository"
        export PATH
    ;;
    -h|--help)
        echo "Użycie: $0 [Opcje]"
        echo "--date -d,       Wyświetla dzisiejszą date"
        echo "--logs -l,   [liczba]    Tworzy podaną liczbę plików tekstowych 'log' (domyślnie 100)"
        echo "--help -h,       Pokazuje instrukcje obsługi"
    ;;
    *)
        echo "Użycie: $0 --help więcej informacji"
    ;;
esac
