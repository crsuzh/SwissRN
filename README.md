# SwissRN
Swiss Reproducibility Network (SwissRN)

# HOWTO

Man muss hugo mit brew installiert werden. Falls man brew nicht hat unter OS X muss man homebrew zuerst installieren.

brew install hugo

Um die Seite lokal zum laufen zu bringen muss man folgendes tun

1. Lokale Kopie der Seite machen (einmalig)
git clone --recurse-submodules git@github.com:crsuzh/SwissRN.git

Inhalte ändern in  config.toml 

2. Webseite starten
cd SwissRN
hugo server -t hugo-icon
Die Seite läuft nun lokal unter http://localhost:1313/SwissRN/

3. Webseite erstellen
cd SwissRN
hugo -D

4. Hochladen
git add config.toml docs/index.html 
 git commit -m "update"
 git push origin master
