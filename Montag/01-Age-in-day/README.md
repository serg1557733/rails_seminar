## Hintergrund für die Übung

    Mach dich mit dem Einbinden externer Skripte und dem Aufrufen von Methoden daraus vertraut.
    Verstehe die Konzepte von Variablen, Variablenzuweisung, Methodendefinition und Methodenaufrufen vollständig.

## Aufgabe

Alter berechnen

    Vervollständige die Methode age_in_days, die in der Datei lib/age_in_days.rb definiert ist. Diese Methode nimmt drei Argumente (day, month und year) und soll eine Integer-Zahl zurückgeben – dein Alter in Tagen (die Anzahl der Tage, die du auf der Erde gelebt hast).

## Interaktives Programm

    Sobald deine Methode age_in_days korrekt ist, soll sie in lib/interface.rb verwendet werden, um ein Kommandozeilen-Tool auszuführen. Starte das Programm, indem du folgendes im Terminal ausführst:

```bash
ruby lib/interface.rb
```

Du wirst sehen, dass das Programm sagt, du seist 0 Jahre alt. Du musst den Code so ändern, dass das Programm deine Methode age_in_days verwendet. Hinweis: Die Methode ist in der Datei interface.rb verfügbar, da wir am Anfang der Datei den Befehl require_relative geschrieben haben.

    Verbesserung: Gibt es sich wiederholende Codezeilen in interface.rb? Könntest du diese umstrukturieren, um den Code DRY zu halten?

## Weitere Vorschläge & Ressourcen

    Du kannst die Date-Klasse verwenden, die wir mit require 'date' in unsere Datei laden.
    Nutze die interaktive Ruby-Konsole (IRB), um zu experimentieren.
    Wie du im gegebenen Code siehst, verwendet Ruby die Methode puts, um Werte (also Ausgaben) im Terminal anzuzeigen.

## Wichtige Lernpunkte

Die folgenden Fragen mögen für die meisten offensichtlich erscheinen, aber stelle sicher, dass du sie alle zu 100 % beantworten kannst. Variablen und Methoden sind das Fundament der Ruby-Programmierung – du solltest diese Konzepte in- und auswendig verstehen.
Über Variablen

    Was ist eine Variable? Welche Variablen gibt es in deinem Programm?
    Was bedeutet es, eine Variable zu definieren? Welche Syntax wird dafür verwendet?
    Können wir eine Variable verwenden, die nicht definiert wurde?
    Können wir einer bereits definierten Variable einen neuen Wert zuweisen? Wie?
    Kannst du genau erklären, was in den folgenden beiden Codezeilen passiert?

```ruby
some_number = 1
some_number = some_number * 2
```

    Welche Namenskonventionen gibt es für Variablen in Ruby? (Du kannst die Antwort googeln.)

## Methoden

    Was ist eine Methode? Welche Methoden gibt es in deinem Programm?
    Was ist der Unterschied zwischen einer Methodendefinition und einem Methodenaufruf?
    Wo definieren wir Methoden in diesem Programm? Wo rufen wir sie auf?
    Was gibt eine Methode als Rückgabewert zurück?
    Welche Ruby-Konvention gibt es für Rückgabewerte von Methoden?

## Extra

    Wie bekommt man eine Eingabe vom Benutzer über das Terminal?
    Warum verwenden wir die Methode `chomp`?
    Und `to_i` Was macht diese Methode?
