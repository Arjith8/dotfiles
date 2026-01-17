#!/bin/bash

DB_PATH="$HOME/.local/share/screen_time.db"

if [ ! -f "$DB_PATH" ]; then
    sqlite3 "$DB_PATH" "CREATE TABLE IF NOT EXISTS screen_time (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        state TEXT NOT NULL,
        timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
    );"
fi

state = $1

sqlite3  "$DB_PATH" "INSERT INTO screen_time (state) VALUES ('$state');"
