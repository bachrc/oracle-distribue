
Insert into personnel values(4000, '183107611000005', 1200,null ,to_date('01/01/01', 'DD/MM/YY')) ;
Insert into personnel values(4001, '183087611000006', 1200,null ,to_date('02/01/01', 'DD/MM/YY')) ;
Insert into personnel values(4002, '256097611000007', 1200,null ,to_date('03/01/01', 'DD/MM/YY')) ;
Insert into personnel values(4003, '237117611000008', 1200,null ,to_date('04/01/01', 'DD/MM/YY')) ;
Insert into personnel values(4004, '151047611000010', 1700,null ,to_date('05/01/01', 'DD/MM/YY')) ;
Insert into personnel values(4005, '112047611000013', 1700,null ,to_date('06/01/01', 'DD/MM/YY')) ;
 

Insert into medecin values(300, 4004, 'neuro-chirurgie') ;
Insert into medecin values(301, 4005, 'chirurgie esthetique') ;

Insert into infirmiere values( 310, 4003, 'CDI') ;
Insert into infirmiere values( 311, 4002, 'CDD') ;

Insert into service values(10,'chirurgie',232323232,50,1);
Insert into service values(11,'reanimation',232323233,35,1);
Insert into service values(12,'pediatrie',232323234,40,1);

Insert into rattache values(300, 10) ;
Insert into rattache values(301, 11) ;

Insert into affectation values(310, 10);
Insert into affectation values(311, 11);


