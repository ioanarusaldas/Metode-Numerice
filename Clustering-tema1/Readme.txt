Savu Ioana_Rusalda 315CB

TASK 1

  Pentru a citi NC am deschis fisierul "file_params" si am folosit fscanf.
  Pentru a citi matricea de puncte m-am folosit de functia "load".

TASK 2

  Am ales primii NC centroizi cu care sa porneasca algoritmul si am calculat
dimensiunea matricei "points" folosind size.Apoi am parcurs fiecare punct din
matrice si pentru fiecare punct,am parcur fiecare centroid. Am calculat
astfel distanta minima a fiecarui punct fata de centroizi.Am salvat indicele 
centroidului de care este propiat fiecare punct intr-un vector.
  La final,am parcurs vectorul si am aflat centrul de masa al punctelor 
asociate fiecarui centroid si am actualizat pozitiile centroizilor.
  In "lastcentroids" am salvat pozitiile ultimilor centroizi pentru a verifica daca 
pozitiile lor se mai modifica.

TASK 3

  La fel ca la task-ul precedent,am retinut indicele centroidului cel mai apropiat
pentru fiecare punct intr-un vector.
La final am realizat graficul folosind functia "scatter3".

TASK 4

    Pentru inceput am reluat secventa de program de la task-urile anterioare in care 
salvam indicii centroidului cel mai apropiat pentru fiecare punct.
Am parcurs, apoi, vectorul si am calculat costul pentru fieare centroid.La final 
am adunat costurile.

TASK 5

  Am citit matricea de puncte cu functia "dlmread".Pentru fiecare NC (de la 1 la 10)
am calculat centroizii cu functia de la task-ul 2 si costul cu functia de la 
task-ul 4. Pentru a reprezenta grafic am folosit functia "plot".
   