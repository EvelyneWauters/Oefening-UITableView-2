# Oefening-UITableView-2

In deze oefening gaan we **static** en **dynamic** rows gebruiken in de UITableView.

## Tips

## Opgaves
1. Voeg een UITableViewController toe aan het storyboard.
  - Configureer deze UITableViewController als **static**.
  - Maak 1 statische cell in het storyboard.
  - Maak en connecteer de nodige outlets. Dit gaat enkel en alleen omdat het een **statische** tabel is!
2. Voeg nog een UITableViewController toe aan het storyboard.
  - Configureer deze UITableViewController als **dynamic**.
  - Maak een prototype cell.
  - Maak je eigen subklasse van UITableViewCell en zet deze als de custom klasse van jouw prototype cell.
  - Implementeer alle nodige methodes van het UITableViewDataSource en UITableViewDelegate protocol.
3. Verbind de 2 UITableViewControllers met een **show** segue.
  - De bedoeling is dat je de segue performt wanneer op de rij geklikt wordt.
  - Dit kan je volledig vanuit het storyboard doen.
4. Zet je eigen delegate protocol op zodat wanneer je een kleur selecteert in de 2e UITableViewController deze kleur wordt doorgegeven aan de 1e UITableViewController.
  - Definiëer je eigen delegate protocol in de 2e UITableViewController.
  - Maak een property aan voor jouw eigen delegate in de 2e UITableViewController.
  - Zet de delegate gelijk aan de 1e UITableViewController vanuit de `prepareForSegue:sender:` methode.
