%% continentes:
cont('África', africa).
cont('Ámerica do sul', ams).
cont('Ámerica do norte', amn).
cont('Europa', eu).
cont('Ásia', asia).
cont('Antártida', ant).
cont(_, error('continente inválido')).

%% classe
clas('Mamífero', mam).
clas('Inseto', ins).
clas('Réptil', re).
clas('Ave', av).
clas(_, error('classe inválida')).

%% dieta
diet('Carnívoro', car).
diet('Omnívoro', omn).
diet('Herbívoro', her).
diet(_, error('dieta inválida')).

%%               nome comum            nome cientifico clas diet altr mass contint ameaca
animal(           'Gorila', 'Gorilla Gorilla Gorilla', mam, her, 150, 180, africa,      0).
animal('Pinguim-imperador',    'Aptenodytes forsteri',  av, car, 100,  30,    ant,      0).

procura_animal(Nc, Ns, Clas, Diet, H, M, Co, Am) :-
  animal(Nc, Ns, Clas, Diet, H, M, Co, Am),
  cont(Co_s, Co),
  clas(Cl_s, Clas),
  diet(Di_s, Diet),
  
  write('nome comum: '),      write(Nc),   write('\n'),
  write('nome cientifico: '), write(Nc),   write('\n'),
  write('classe: '),          write(Cl_s), write('\n'),
  write('dieta: '),           write(Di_s), write('\n'),
  write('altura: '),          write(H),    write('\n'),
  write('continente: '),      write(Co_s), write('\n'),
  write('ameaca: '),          write(Am).   write('\n').
