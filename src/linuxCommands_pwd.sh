#!/bin/bash
:<<EOF
    - pwd(Print Working Directory) adalah perintah yang digunakan untuk mencetak direktori kerja saat ini dalam Bash
    - menampilkan path absolut dari lokasi dimana skrip dijalankan
    - implementation
EOF

# contoh penggunaan 1 (menampilkan direktori saat ini)
echo "Direktori kerja saat ini: $(pwd)"

# contoh penggunaan 2 (menyimpan direktori saat ini dalam vaiabel)
CURRENT_DIR=$(pwd)
echo "Skrip ini berjalan di $CURRENT_DIR"

# contoh penggunaan 3 (menggunakan pwd untuk menulis log)
LOGFILE="$(pwd)/script.log"
echo "Log akan disimpan di : $LOGFILE"

# contoh penggunaan 4 (automasi - backup otomatis ke direktori saat ini)
# berguna untuk membuat backup file di direktori kerja
BACKUP_DIR="$(pwd)/backup"
mkdir -p "$BACKUP_DIR"
cp myfile.txt "$BACKUP_DIR"
echo "File telah dibackup ke: $BACKUP_DIR"

# contoh penggunaan 5 (automasi - menentukan direktori eksekusi skrip)
# berguna jika skrip dipanggil dari lokasi berbeda
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "Skrip ini berjalan dari : $SCRIPT_DIR"