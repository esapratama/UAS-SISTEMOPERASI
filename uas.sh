#!/bin/bash

# Loop untuk menampilkan menu dan membaca pilihan pengguna
while true; do
    echo "Pilih operasi yang ingin dilakukan:"
    echo "1) Pencarian teks menggunakan grep"
    echo "2) Manipulasi teks menggunakan awk"
    echo "3) Manipulasi teks menggunakan sed"
    echo "4) Keluar"
    read choice

    case $choice in
        1)
            echo "Masukkan nama file: "
            read file
            echo "Masukkan teks yang ingin dicari: "
            read search_text
            grep "$sear
             ;;
        2)
            echo "Masukkan nama file: "
            read file
            echo "Masukkan pola awk: "
            read awk_pattern
            awk "$awk_pattern" "$file"
            ;;
        3)
            echo "Masukkan nama file: "
            read file
            echo "Masukkan perintah sed: "
            read sed_command
            sed "$sed_command" "$file"
            ;;
        4)
            echo "Keluar dari program."
            exit 0
            ;;
        *)
            echo "Pilihan tidak valid. Silakan coba lagi."
            ;;
    esac
done