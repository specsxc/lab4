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
        PATH="$PATH:$(pwd)/lab4"
        export PATH
    ;;
    -e|--error)
        liczba_plikow=${2:-100}
        for ((i=1; i<=liczba_plikow; i++)); do
            mkdir -p "error${i}"
            nazwa_pliku="error${i}/error${i}.txt"
            echo "Nazwa pliku: $nazwa_pliku, Nazwa skryptu: $0, Data utworzenia: $(date)" > "$nazwa_pliku"
        done
    ;;
    -h|--help)
        echo "Użycie: $0 [Opcje]"
        echo "--date, -d        Wyświetla dzisiejszą date"
        echo "--logs, -l [liczba]       Tworzy podaną liczbę plików tekstowych 'log' (domyślnie 100)"
        echo "--help, -h        Pokazuje instrukcje obsługi"
        echo "--init        Klonuje repozytorium i ustawia zmienna PATH"
        echo "--error, -e [liczba]      Tworzy podaną liczbę plików tekstowych 'error' (domyślnie: 100)"
    ;;
    *)
        echo "Użycie: $0 --help więcej informacji"
    ;;
esac
