# Build Flappy Sky menjadi APK

Proyek ini adalah proyek Android Gradle biasa. APK debug yang dihasilkan adalah:

`app/build/outputs/apk/debug/app-debug.apk`

## Cara termudah: GitHub Actions

1. Buat repository GitHub baru.
2. Upload seluruh isi folder `FlappyClone` ke repository tersebut.
3. Buka tab **Actions**.
4. Jalankan workflow **Build Flappy Sky APK** dengan **Run workflow** jika build belum berjalan otomatis.
5. Setelah selesai, buka hasil workflow dan download artifact **FlappySky-debug-apk**.
6. Di dalam artifact terdapat `app-debug.apk`, yang bisa dipasang di Android.

## Cara lokal

Dari root proyek, gunakan Gradle 8.4 dan Android SDK dengan Android API 34:

```bash
gradle :app:assembleDebug
```

APK hasilnya:

```text
app/build/outputs/apk/debug/app-debug.apk
```
