# Über Gewissheit - Wittgenstein ausgelegt

## Übersicht

Diese Sammlung enthält Materialien zur Entstehungsgeschichte, Editionsgeschichte und philosophischen Bedeutung von Wittgensteins letztem Werk "Über Gewissheit".

## Dateierstellung und -bearbeitung

In diesem Projekt gibt es mehrere Skripte, die Ihnen bei der Erstellung und Bearbeitung der Dokumente helfen:

### 1. PDF-Generierung mit Typst

```bash
./render_typst.sh
```

Dieses Skript durchläuft alle QMD-Dateien und rendert sie in das Typst-Format. Die resultierenden PDF-Dateien werden im Verzeichnis `typst_output/` gespeichert. Das Skript:

- Rendert alle QMD-Dateien in das Typst-Format
- Generiert PDFs für jede Datei
- Erkennt automatisch neue QMD-Dateien
- Kopiert alle PDFs in das `typst_output/`-Verzeichnis
- Kopiert alle PDFs auch in das `../_build/`-Verzeichnis für die Website
- Unterstützt die Kombination aller PDFs (wenn pdftk installiert ist)

### 2. HTML-Website-Generierung

```bash
./render_website.sh
```

Dieses Skript erstellt die HTML-Version der Website. Es:

- Stellt sicher, dass alle PDFs im korrekten `../_build/`-Verzeichnis vorhanden sind
- Rendert alle QMD-Dateien in das HTML-Format
- Erstellt eine vollständige Website mit Navigation, Inhaltsverzeichnis usw.
- Die fertige Website befindet sich im Verzeichnis `../_build/`

### 3. Preview-Modus starten

```bash
./preview_website.sh
```

Dieses Skript startet einen lokalen Webserver, der es ermöglicht, die Website in Echtzeit während der Bearbeitung zu betrachten:

- Bereitet alle notwendigen Dateien vor
- Startet einen lokalen Webserver auf http://localhost:6862/
- Aktualisiert die Ansicht automatisch, wenn Dateien geändert werden
- Drücken Sie Strg+C, um den Preview-Modus zu beenden

## Workflow-Empfehlungen

1. Bearbeiten Sie die QMD-Dateien nach Bedarf
2. Führen Sie `./render_typst.sh` aus, um PDFs zu generieren
3. Führen Sie `./render_website.sh` aus, um die HTML-Website zu erstellen
   - Oder führen Sie `./preview_website.sh` aus, um die Website während der Bearbeitung zu betrachten

## Projektstruktur

- `*.qmd` - Quarto Markdown-Dateien mit dem Inhalt
- `references.bib` - Bibliographie
- `_quarto.yml` - Konfigurationsdatei für das Quarto-Projekt
- `typst_output/` - Verzeichnis für erzeugte PDF-Dateien
- `../_build/` - Verzeichnis für die fertige Website

## Hinweise

- Für die kombinierte PDF-Generierung ist pdftk erforderlich
- Die HTML-Website funktioniert ohne zusätzliche Abhängigkeiten
- Bei Problemen mit dem Rendering führen Sie zuerst `./render_typst.sh` und dann `./render_website.sh` aus 