# Datenbanken HS22
## Projekt – milestone 1

### Projektidee:
Als Idee soll ein in Realität umsetzbares interkantonales Schulprojekt umgesetzt werden, bei welchem Schülerinnen und Schüler wie auch Lehrpersonen gemeinsam versuchen, in möglichst kurzer Zeit mit verschiedenen sportlichen Aktivitäten eine Distanz von 42'000 km zu erreichen. Mit dem Projekt «Einmal um die Erde» sollen die Teilnehmenden nicht nur dazu angeregt werden, sich sportlich zu betätigen und somit etwas Gutes für sich wie auch die Umwelt zu tun, nebenbei wird durch die interkantonale Herausforderung auch der Teamgeist der Teilnehmenden gefördert.
Das Projekt "Einmal um die Erde" wird auf einer Webplattform aufbereitet und darüber geregelt. Die Teilnehmenden können sich über die Webplattform registrieren, ihre erbrachten Leistungen über bestimmte Apps anrechnen lassen und jederzeit den aktuellen Stand abrufen. Um dieses Projekt umsetzen zu können, braucht es unter anderem eine Datenbank, die im Rahmen dieses Projekts der Vorlesung "Datenbanken" (zumindest theoretisch) realisiert werden soll. 

Ziel: Leistung in km messen und als Schule die 42'000 km (Erdumfang) erreichen.
Schule als ganzes erfassen? 
einzelne Klassen erfassen? 
LPs separat erfassen? 
Welche Sportarten zulässig? 

Für die Datenbank haben wir uns folgende mögliche Entities überlegt:
- Schule 
- Lehrperson
- Sportlehrperson (separat?)
- Schüler:in
- Klasse
- Kanton (als Attribut bei der Schule?)
- Plattform




### Sample Queries (ausformuliert):
1.	Wie viele km hat die Schule XY bisher/Stand der Abfrage erreicht? 
2.	Wie viele km hat die Klasse XY bisher/Stand der Abfrage erreicht? 
3.	Wie viele km hat die Lehrperson XY bisher/Stand der Abfrage erreicht? 
4.	Welche Sportart hat am meisten km erzielt? 
5.	Wie viele Schulen pro Kantone nehmen am Projekt teil? 
6.	Wie viele Klassen pro Schule nehmen am Projekt teil? 
7.	Wie viele Lehrpersonen pro Schule nehmen am Projekt teil? 
8.	Wie viele Teilnehmer:innen sind es insgesamt? 
9.	Wie viele km wurden insgesamt im Projekt erreicht? 
10.	Welche Schule/Kanton/Klasse hat in kürzester Zeit die Erde umrundet? 


![diagrammdraf.png](diagramdraft.png)

