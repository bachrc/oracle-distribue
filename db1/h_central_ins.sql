
Insert into Personne values( '183107611000005', 'Brennetot','Alain','13 rue des nenuphars 762101 LANQUETOT',0235313531) ;
Insert into Personne values( '183087611000006','Lefevre','Alexandre','184 rue liberation 76700 GAINNEVILLE',        0235353535) ;
Insert into Personne values( '256097611000007','Dupont','Ghislaine', '38 Cours de la republique 76600,LE HAVRE',0233131313) ;
Insert into Personne values( '237117611000008','Durant','Therese','66 rue Coty 76600 LE HAVRE',0233131314) ;
Insert into Personne values( '174017611000009','Martin','Paul','32 rue Lesueur 76600 LE HAVRE',0233131315) ;
Insert into Personne values( '151047611000010','Mabuse','Raymond','15 rue du Bel Air 76210 HARFLEUR',0233131316) ;
Insert into Personne values( '145057611000011','Deschamps','Marcel','Place de la mairie 76210 BOLBEC',0233131317) ;
Insert into Personne values( '164107611000012','Marchand','Bernard', '147 rue Ernest Renan 76600 LE HAVRE',0233131318) ;
Insert into Personne values( '112047611000013','Enstein','Frank','19 rue Bougainville 76600 LE HAVRE',0233131319) ;
Insert into Personne values( '237127611000014','Bouchard','Renee','56 rue Delavigne 76600 LE HAVRE',0233131310) ;


Insert into patient values(1111111110, '237127611000014', 2222222220, to_date('30/09/98', 'DD/MM/YY')) ;
Insert into patient values(1111111111, '164107611000012', 2222222221, to_date('15/10/99', 'DD/MM/YY')) ;
Insert into patient values(1111111112, '145057611000011', 2222222222, to_date('04/02/01', 'DD/MM/YY')) ;

Insert into externe values(8888888880, 1111111110, to_date('07/01/99', 'DD/MM/YY')) ;


Insert into hospitalise values(9999999990, 1111111110, to_date('30/09/98', 'DD/MM/YY'), to_date('06/10/98', 'DD/MM/YY')) ;
Insert into hospitalise values(9999999991, 1111111110, to_date('17/12/98', 'DD/MM/YY'), to_date('15/01/99', 'DD/MM/YY')) ;
Insert into hospitalise values(9999999992, 1111111111, to_date('15/10/99', 'DD/MM/YY'), to_date('23/10/99', 'DD/MM/YY')) ;
Insert into hospitalise values(9999999993, 1111111112, to_date('04/02/01', 'DD/MM/YY'), to_date('12/02/01', 'DD/MM/YY')) ;


Insert into hopital values(1, 'Hopital Flaubert', '55 rue Gustave Flaubert 76600 LE HAVRE') ;
Insert into hopital values(2, 'Hopital Pierre Janet', '47 rue Tourneville 76600 LE HAVRE') ;
Insert into hopital values(3, 'Hopital Monod', '29 Pierre Mendes France 76290 MONTIVILLIERS') ;



Insert into integre values(9999999990, 10, 'AMB', 120, to_date('30/09/98', 'DD/MM/YY')) ;
Insert into integre values(9999999991, 11, 'AMB', 75, to_date('01/10/98', 'DD/MM/YY')) ;
Insert into integre values(9999999992, 10, 'AMB', 100, to_date('17/12/98', 'DD/MM/YY')) ;
Insert into integre values(9999999993, 11, 'AMB', 115, to_date('04/02/01', 'DD/MM/YY')) ;