# Datenbanken HS22
## Projekt – milestone 1
Matthias Walther-Büel & Calissa Ineichen

### Projektidee
Als Idee soll ein in Realität umsetzbares interkantonales Schulprojekt umgesetzt werden, bei welchem Schüler:innen wie auch Lehrpersonen gemeinsam versuchen, in möglichst kurzer Zeit mit verschiedenen sportlichen Aktivitäten eine Distanz von 42'000 km zu erreichen. Mit dem Projekt «Einmal um die Erde» sollen die Teilnehmenden nicht nur dazu angeregt werden, sich sportlich zu betätigen und somit etwas Gutes für sich wie auch die Umwelt zu tun, nebenbei wird durch die interkantonale Herausforderung auch der Teamgeist der Teilnehmenden gefördert.
Das Projekt "Einmal um die Erde" wird auf einer Webplattform aufbereitet und darüber geregelt. Die zurückgelegten Distanzen der Teilnehmenden (Schüler:innen) werden durch die Sportlehrperson gesammelt, kontrolliert und über die Webplattform in die Datenbank übermittelt. Die Etappen werden auf einem Globus visualisiert. Es entsteht ein virtuelles Wettrennen um die Welt. Als Startpunkt gilt der jeweilige Standort der Schule. Der aktuelle Standort wird stets visuell auf dem Globus dargestellt. Die zurückgelegte Distanz und die entsprechenden Disziplinen wie Laufen, Rad fahren, Schwimmen etc. werden angegeben. Denkbar sind Angaben der verbrauchten Kalorien, gesparten CO<sub>2</sub>-Emissionen und Gesundheitskosten und vieles mehr. 

Um dieses Projekt umsetzen zu können, braucht es unter anderem eine Datenbank, die im Rahmen dieses Projekts der Vorlesung "Datenbanken" (zumindest theoretisch) realisiert werden soll. 

Für die Datenbank haben wir uns folgende mögliche Entitäten überlegt:
- Schule 
- Sportlehrperson
- Schüler:in
- Klasse (schwache Entität)
- Sportliche Leistung
- Zeit



### Sample Queries (ausformuliert)

1.	Wie viele Kilometer hat die Schule/Klasse XY zum Zeitpunkt X/bisher/Stand der Abfrage erreicht?  
2.	Mit welcher Sportart wurde die weiteste Distanz zurückgelegt? 
3.	Wie viele Schulen pro Kanton/Klassen pro Schule nehmen am Projekt teil? 
4.	Welches Geschlecht hat mit welcher Sportart am meisten Kilometer zurückgelegt? 
5.	Welche Sportlehrperson hat mit welcher Klasse die höchste CO<sub>2</sub>-Äquivalenz erreicht? 
6.	Welche Schule/Klasse hat in kürzester Zeit die Erde umrundet?
7.	In welchem Zeitraum (Monate) wurden die meisten/wenigsten Kilometer zurückgelegt? 
8.	Welcher Jahrgang ist beim Projekt am häufigsten/geringsten vertreten? 
9.	Wie viele Teilnehmer:innen sind es insgesamt? 
10.	Wie viele Kilometer wurden insgesamt im Projekt erreicht? 

### ER Diagramm

![ER Diagramm](./ER-umdieErde.png)


