#!/usr/bin/env bash
set -euo pipefail
if ! command -v gradle >/dev/null 2>&1; then
  echo "Gradle tidak ditemukan. Instal Gradle 8.4 atau buka proyek ini di Android Studio." >&2
  exit 1
fi
gradle :app:assembleDebug --no-daemon
printf '\nAPK: %s\n' "$(pwd)/app/build/outputs/apk/debug/app-debug.apk"
