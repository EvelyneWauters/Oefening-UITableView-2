# Oefening-UITableView-2

In deze oefening gaan we **static** en **dynamic** rows gebruiken in de UITableView.

## Opgaves
1. Voeg een UITableViewController toe aan het storyboard. Deze zal de status van jouw selectie(s) weergeven.
  - Configureer deze UITableViewController als **static**.
  - Maak 1 statische cell in het storyboard.
  - Maak en connecteer de nodige outlets. Dit gaat enkel en alleen omdat het een **statische** tabel is!
2. Voeg nog een UITableViewController toe aan het storyboard. Deze zal dienen om een kleur te kiezen uit een lijst.
  - Configureer deze UITableViewController als **dynamic**.
  - Maak een prototype cell.
  - Maak je eigen subklasse van UITableViewCell en zet deze als de custom klasse van jouw prototype cell.
  - Implementeer alle nodige methodes van het UITableViewDataSource en UITableViewDelegate protocol.
  - Sla alle kleuren in de UITableViewController op in een **(NSArray *)**.
3. Verbind de 2 UITableViewControllers met een **show** segue.
  - De bedoeling is dat je de segue performt wanneer op de rij geklikt wordt.
  - Dit kan je volledig vanuit het storyboard doen.
4. Zet je eigen delegate protocol op zodat wanneer je een kleur selecteert in de 2e UITableViewController deze kleur wordt doorgegeven aan de 1e UITableViewController.
  - Definiëer je eigen delegate protocol in de 2e UITableViewController.
  - Maak een property aan voor jouw eigen delegate in de 2e UITableViewController.
  - Zet de delegate gelijk aan de 1e UITableViewController vanuit de `prepareForSegue:sender:` methode.
5. Verander de hoogte van de cellen dynamisch. Implementeer hiervoor de juiste UITableViewDelegate methode.
6. Voeg een nieuwe UITableViewController toe. Deze zal dienen om een font te kiezen uit een lijst.
  - Overloop dezelfde stappen dan je gedaan hebt om de UITableViewController van de kleuren op te zetten.
  - Om alle font family names te bekomen is er een **klasse**methode op `UIFont` genaamd `familyNames`.
  - Om voor een font family name alle fonts te bekomen is er een **klasse**methode op `UIFont` genaamd `fontWithName:size:`.
  - Sla alle fonts op in een **(NSDictionary *)** zodat elke key de font family name is en de waarde overeenkomt met de array van fonts.
7. Rond de UIView die de geselecteerde kleur weergeeft af.
  - *Tip: elke UIView heeft een `layer` property.*
