# Diese require-Zeile lädt den Inhalt der Datei "date" aus der standardmäßigen
# Ruby-Bibliothek und stellt damit Zugriff auf die Date-Klasse bereit.
require "date"

def age_in_days(day, month, year)
  # TODO: Gibt das Alter in Tagen zurück, basierend auf dem gegebenen Tag, Monat und Jahr der Geburt.
  today = Date.today
  age = Date.new(year, month, day)
  (today-age).to_i
end
