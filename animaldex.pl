%% continentes:
cont("África", africa).
cont("Ámerica do sul", ams).
cont("Ámerica do norte", amn).
cont("Europa", eu).
cont("Ásia", asia).
cont("Antártida", ant).
cont(_, error("continente inválido")).

clas("Mamífero", mam).
clas("Inseto", ins).
clas("Réptil", re).
clas("Ave", av).
clas(_, error("classe inválida")).

diet("Carnívoro", car).
diet("Omnívoro", omn).
diet("Herbívoro", her).
diet(_, error("dieta inválida")).

%% animal(nome comum, nome cientifico, 
animal("Gorila",            "Gorilla Gorilla Gorilla", mam, her, 150, 180, africa, 0).
animal("Pinguim-imperador",    "Aptenodytes forsteri",  av, car, 100, 30,     ant, 0).
