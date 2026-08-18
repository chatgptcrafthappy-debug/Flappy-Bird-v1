# Flappy Sky (Flappy Bird Clone) — Project Android

Game clone bergaya **Flappy Bird** (tap untuk terbang, hindari pipa) — kode Java native
pakai `SurfaceView` + `Canvas`, tanpa game engine eksternal. Semua sprite (burung, pipa,
tanah, background, icon launcher) digambar secara **prosedural lewat kode** dengan gaya
pixel-art klasik, jadi tidak ada aset gambar yang dicopy dari game manapun.

## Isi folder

```
FlappyClone/
├── app/
│   ├── build.gradle
│   ├── proguard-rules.pro
│   └── src/main/
│       ├── AndroidManifest.xml
│       ├── java/com/skycraft/flappyclone/
│       │   ├── MainActivity.java     -> Activity utama, fullscreen immersive
│       │   ├── GameView.java         -> Game loop, render, input, skor
│       │   ├── Bird.java             -> Logic burung (gravitasi, flap, rotasi)
│       │   ├── Pipe.java             -> Logic & render pipa rintangan
│       │   └── SpriteFactory.java    -> Generator semua sprite pixel-art
│       └── res/
│           ├── mipmap-*/ic_launcher.png   -> Icon app (5 densitas)
│           ├── values/strings.xml
│           └── values/themes.xml
├── icon_preview_512.png   -> Preview icon ukuran besar (bukan bagian resource app)
├── build.gradle
├── settings.gradle
└── gradle.properties
```

## Cara build jadi APK

1. Buka **Android Studio** (versi terbaru, disarankan Hedgehog/Iguana ke atas).
2. `File > Open` → pilih folder `FlappyClone` ini.
3. Tunggu proses **Gradle Sync** selesai (Android Studio akan otomatis download
   Gradle wrapper & dependency yang dibutuhkan — pastikan koneksi internet aktif).
4. Klik `Build > Build Bundle(s) / APK(s) > Build APK(s)`.
5. APK hasil build ada di `app/build/outputs/apk/debug/app-debug.apk`.
6. Untuk APK release (sudah di-sign), pakai `Build > Generate Signed Bundle / APK`.

### Build lewat command line (opsional)
Kalau sudah setup Android SDK + `ANDROID_HOME`:
```bash
cd FlappyClone
./gradlew assembleDebug
```
(Catatan: file `gradlew` script & `gradle-wrapper.jar` belum disertakan di zip ini —
Android Studio akan otomatis membuatnya saat kamu buka project, atau kamu bisa jalankan
`gradle wrapper` sekali kalau sudah install Gradle manual.)

## Cara main

- **Tap layar** = burung mengepak/naik.
- Hindari pipa hijau atas & bawah.
- Skor bertambah tiap berhasil melewati satu pasang pipa.
- Skor terbaik (`best score`) otomatis tersimpan di `SharedPreferences`.

## Kustomisasi cepat

- **Kesulitan game**: ubah `pipeGapHeight`, `pipeSpacing`, `pipeSpeed` di `GameView.setupWorld()`.
- **Warna burung**: ubah konstanta warna di `SpriteFactory.java` (`BODY_YELLOW`, dll).
- **Nama app**: ubah `app_name` di `res/values/strings.xml`.
- **Package name**: ubah `applicationId` di `app/build.gradle` + `namespace`, lalu
  sesuaikan struktur folder Java kalau mau ganti nama package sepenuhnya.

## Catatan penting

Game ini adalah **karya orisinal terinspirasi genre "flappy"** (mekanik tap-to-flap
hindari rintangan yang sudah umum di banyak game) — kode dan seluruh aset visual dibuat
dari nol, bukan hasil decompile atau copy-paste dari APK Flappy Bird asli manapun.
Aman untuk dikembangkan lebih lanjut atau dipakai sebagai basis project SkyCRAFT.
