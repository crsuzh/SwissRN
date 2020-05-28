# SwissRN
Swiss Reproducibility Network (SwissRN). Live Seite unter http://www.swissrn.org/.

## HOWTO

## Vorbereitungen
- Man muss hugo mit brew installieren. Falls man brew nicht hat unter OS X, muss zuerst homebrew installiert werden.

```
brew install hugo
```

- Lokale Kopie der Seite machen (einmalig, eine von beiden Möglichkeiten, entweder per SSH oder per HTTPS)

```
git clone --recurse-submodules git@github.com:crsuzh/SwissRN.git
```

oder

```
git clone --recurse-submodules https://github.com/crsuzh/SwissRN.git
```

## Editieren der Webseite

- Zuerst alle Aktualisierungen holen mit `git pull`

- Globale Einstellungen und Inhalte wie Menüs werden in `config.toml` definiert, die Unterseiten sind separat und werden im Ordner `content` und deren Unterordner geändert.

- Webseite lokal starten, um Änderungen zu begutachten.
```
cd SwissRN
hugo server
```

Die Seite läuft nun lokal unter http://localhost:1313/. In der Regel kann die Seite am laufen bleiben, und man muss nur den Browser aktualisieren um Änderungen zu sehen. Um den lokalen Webserver abzubrechen `CTRL+C`.

## Bilder

Bilder sind im Ordner `content/img`. Beispiele für korrekte Pfade sind folgende:
- Für `config.toml` lautet der Pfad `./img/logo.jpg`.
- Für die Unterseiten in `content` lautet der Pfad `./../img/bild.jpg`
- Bilder für Activities sind 900x150 pixel.

## Webseite publizieren

- Als erstes muss die Webseite mit dem Befehl `hugo` gebaut werden. Die Webseite wird im Ordner `docs` erstellt. Um alles vor dem Bauen zu bereinigen, dürfen die Files in den beiden Ordnern `docs` und `ressources` gelöscht werden, denn diese werden beim Bauen mit dem Befehl `hugo` jedesmal neu neu erstellt. Jedoch darf das File `docs/CNAME` nicht gelöscht werden, darin ist der DNS eintrag `www.swissrn.org` enthalten. Um dieses File wieder herzustellen, siehe unten.

```
cd SwissRN
hugo
```

- Überprufen, welche Dateien sich geändert haben und zu publizieren sind

```
git status
```

- Es müssen alle Änderungen publiziert werden, zum Beispiel `config.toml`, oder Inhalte in `content`. Ebenfalls der vollständige Ordner `docs`.

```
git add --all docs
git add config.toml
git commit -m "Ein Kommentar über die Aktualisierung"
git push
```

- Manchmal ist es nötig, eine Datei zu löschen
```
git rm Pfad zur Datei
```

Nun ist die Webseite publiziert und kann unter http://www.swissrn.org/ angeschaut werden. Es kann einige wenige Minuten dauern, bis die neue Version angezeigt wird.


## Icons
Eine Auswahl von Icons für die Menus sind unter folgendem Link zu finden und können in`config.toml`angepasst werden.  https://github.com/FortAwesome/Font-Awesome/tree/master/svgs.

## Anpassen des Theme
Die Frontseite zeigt nicht den Blog "Activites" an sondern eine statische Seite. Dies wird erreicht durch Überschreiben der Dateien in `themes/hugo-future-imperfect-slim/layouts/_default/` mit entsprechenden Dateien unter `layouts/_default/`.

## Wie vorgehen falls das File `docs/CNAME` gelöscht wurde?
Auf der Github Seite des Projektes `crsuzh/SwissRN` auf "Settings" gehen, dannach unter "GitHub Pages" bei "Custom domain" folgendes eintragen: `www.swissrn.org`. Dies erstellt ein neues File `docs/CNAME`. Mit `git pull` kann jetzt noch die lokale Kopie auf den neusten Stand gebracht werden.


