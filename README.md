# SwissRN
Swiss Reproducibility Network (SwissRN). Live Seite unter https://crsuzh.github.io/SwissRN/.

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

- Globale Einstellungen und Inhalte wie Menüs werden in `config.toml` definiert, die Unterseiten sind separat und werden im Ordner `content` und deren Unterordner geändert.

- Webseite lokal starten, um Änderungen zu begutachten.
```
cd SwissRN
hugo server
```

Die Seite läuft nun lokal unter http://localhost:1313/SwissRN/. In der Regel kann die Seite am laufen bleiben, und man muss nur den Browser aktualisieren um Änderungen zu sehen. Um den lokalen Webserver abzubrechen `CTRL+C`.

## Bilder

Bilder sind im Ordner `content/img`, dieser Ordner ist der Ausgangspunkt (root directory) für die relative Pfade im Konfigurationsfile, ein Beispiel für einen korrekten Pfad wäre dann `./img/logo.jpg`.

## Webseite publizieren

- Als ersten muss die Webseite gebaut werden mit dem Befehl `hugo`. Die Webseite wird im Ordner `docs` gebaut. Um alles vor dem Bauen zu bereininigen, dürfen die beiden Ordner `docs` und `ressources` komplett gelöscht werden, denn diese werden beim Bauen immer neu erstellt. 
```
cd SwissRN
hugo
```

- Es müssen die kompletten Änderungen im Ordner `docs` und falls nötig Änderungen der `config.toml` übermittelt werden.

```
git add --all docs
git add config.toml
git commit -m "Ein Kommentar über die Aktualisierung"
git push origin master
```

Nun ist die Webseite publiziert und kann unter https://crsuzh.github.io/SwissRN/ angeschaut werden. Es kann einige wenige Minuten dauern, bis die neue Version angezeigt wird.


## Icons
Eine Auswahl von Icons für die Menus sind unter folgendem Link zu finden und können in`config.toml`angepasst werden.  https://github.com/FortAwesome/Font-Awesome/tree/master/svgs.
