# Oracle Distribué

Voici l'image docker-compose afin de créer deux instances d'Oracle communicant l'une avec l'autre.

## Comment l'utiliser
Vous pouvez voir les noms des deux containers Oracle avec `docker ps`

Et vous pouvez attacher un shell à un des containers avec `docker exec -it <le_nom_de_votre_container> /bin/bash`
Et voilà, vous êtes dans une des deux instances d'Oracle.

Les logs pour chacune des bases sont :

```
dbname:xe
login:system
mdp:oracle
```

A partir de la DB1, vous pouvez vous connecter à la DB2 en faisant `sqlplus system/oracle@ORACLE_DB2`
De même à partir de la DB2, vous pouvez vous connecter à la DB1 en faisant `sqlplus system/oracle@ORACLE_DB1`

Voilà voilà
