## Hintergrund für die Übung

- Lerne, die richtige Methode in der Ruby-Dokumentation zu finden.
- Mache dich mit der Nutzung von IRB vertraut, um neue Methoden auszuprobieren und sie dir anzueignen.

IRB ist ein [REPL](http://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop) für Ruby. Es funktioniert folgendermaßen:

1. Es **R**-eads (liest) den vom Benutzer eingegebenen Ausdruck, der jede gültige Ruby-Ausdruck sein kann, wie `"Hello"`, `2+2`, `"hello".upcase` ...
2. Es **E**-valuates (wertet) das Ergebnis dieses Ausdrucks aus.
3. Es **P**-rints (gibt) das Ergebnis aus.
4. Es **L**-oops (springt) zurück zu Punkt 1 und wartet auf eine neue Benutzereingabe.

- **Probiere die folgenden Zeilen** in IRB aus:

```ruby
"A string object".class
19.class
[1, 2, 3].class
"A string object".upcase
"A string object".downcase
[1, 2, 3].shuffle
```

In Ruby ist alles (Text, eine ganze Zahl, eine Gleitkommazahl, ein Array...) ein Objekt. Wir können Methoden auf diesen Objekten aufrufen. Solche Methoden nennt man Instanzmethoden, da sie nur auf Instanzen einer Klasse aufgerufen werden können. Das Objekt, auf dem die Methode aufgerufen wird, nennt man den Empfänger.
Spezifikationen

Finde die richtigen Ruby-Methoden für die String-Klasse, die Integer-Klasse und die Array-Klasse, um sie in den Code einzufügen und die Tests erfolgreich zu machen.

Beim Programmieren geht es darum, klug zu sein und zu wissen, wo und wie man nach den benötigten Informationen sucht! Oft ist der schwierigste Schritt, Google die richtige Frage zu stellen. Um die benötigten Methoden für diese Aufgabe zu finden, nutze:

    Google und Stack Overflow
    Die Ruby-Dokumentation, wenn du eine grobe Idee hast, nach welcher Methode du suchst.

Wenn du denkst, dass du die richtige Methode gefunden hast und weißt, wie man sie verwendet, teste sie in IRB! Das Experimentieren mit IRB ist ein entscheidender Schritt für Anfänger.
Wichtige Lernpunkte

Kannst du die folgenden Fragen beantworten? Falls nicht, bist du noch nicht bereit, weiterzugehen!

    Wie viele eingebaute Ruby-Klassen kennst du? Welche?
    Was ist die Syntax, um eine Methode auf einem Objekt dieser Klassen aufzurufen?
    Was sollte der allererste Schritt sein, wenn du eine Standardoperation durchführen willst (ein Array sortieren, ein Wort in Großbuchstaben umwandeln usw.)?
    Was ist der zweite Schritt, um sicherzustellen, dass du die gefundene Methode wirklich verstehst?
