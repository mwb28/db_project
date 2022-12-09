# Feedback von Sven Helmer #

Die zusaetzliche Hintergrundinformation in Abschnitt 1 der PDF-Datei
hat mir gut gefallen, das macht es etwas einfacher zu
verstehen. Generell sieht die Modellierung solide aus und die
Informationen zur Beantwortung der Sample Queries sind da; es gibt
aber hier und da trotzdem ein paar Ungereimtheiten. Hier das konkrete
Feedback zu einzelnen Punkten:

- Bei der Notation der schwachen Entitaet fehlt etwas: die Beziehung
   selbst wird auch doppelt umrahmt (ebenfalls die Verbindungslinie zur
   schwachen Entitaet). Ansonsten koennte es schwierig werden die
   zugehoerige starke Entitaet zu identifizieren. Hier ist es
   natuerlich Schule, aber rein syntaktisch koennten es auch andere
   Entitaeten sein.

- Bei dem Zyklus zwischen Schule, Sportlehrperson und Klasse koennte
   eine Sportlehrperson an einer Schule angestellt sein, aber eine
   Klasse an einer anderen Schule betreuen. Ist das so gewollt oder ist
   das eine Connection Trap?

- Aehnlich sieht es mit dem Zyklus zwischen Schueler:in, Klasse und
   sportliche Leistung aus. Sind sportliche Leistungen individuell oder
   kann eine Leistung auch geschlossen einer Klasse zugeordnet werden?
   Wenn die Leistungen individuell erbracht werden, dann waere das eine
   Connection Trap. Ein(e) Schueler:in erbringt eine Leistung und
   gehoert einer Klasse an. Damit wird diese Leistung automatisch einer
   Klasse zugeordnet.

- Die Beziehung zwischen sportlicher Leistung und Zeit ist N:M. Das
   bedeutet, dass sich eine sportliche Leistung ueber mehrere Tage
   erstrecken kann. Ist das so gewollt?