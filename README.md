# SwissRN
Swiss Reproducibility Network (SwissRN). Live Seite unter https://crsuzh.github.io/SwissRN/.

# HOWTO

Man muss hugo mit brew installieren. Falls man brew nicht hat unter OS X, muss zuerst homebrew installiert wertden.

```
brew install hugo
```

Um die Seite lokal zum laufen zu bringen und zu ändern. muss man folgendes tun.

1. Lokale Kopie der Seite machen (einmalig)

```
git clone --recurse-submodules git@github.com:crsuzh/SwissRN.git
```
2. Inhalte ändern in `config.toml` 

3. Webseite lokal starten, um Änderungen zu begutachten
```
cd SwissRN
hugo server -t hugo-icon
```

Die Seite läuft nun lokal unter http://localhost:1313/SwissRN/.

4. Die Webseite bauen

```
cd SwissRN
hugo -D
```

5. Die Webseite publizieren

```
git add config.toml docs/index.html 
git commit -m "update"
git push origin master
```
