  

     1.  afficher la liste des pays où Simplon est présent


                   mysql> SELECT*FROM pays;
                   +----+---------+--------+
                   | id | nom     | ville  |
                   +----+---------+--------+
                   |  1 | Senegal | Dakar  |
                   |  2 | Mali    | Bamako |
                   +----+---------+--------+
 


     2.afficher la liste des fabrique de la ville de Dakar


                  mysql> SELECT nom from fabrique WHERE ville='Dakar';
                  +-----------------+
                  | nom             |
                  +-----------------+
                  | simplon_dakar   |
                  | Sonatel_Academy |
                  +-----------------+
       
            

    3.  afficher la liste des pays qui ont au moins 2 fabrique
            

                mysql> SELECT nom,nbre_fabrique 
                     -> FROM pays
                     -> WHERE nbre_fabrique>=2;
                +---------+---------------+
                | nom     | nbre_fabrique |
                +---------+---------------+
                | Senegal | 2             |
                +---------+---------------+

       



   4. afficher le nombre d’apprenant par fabrique


                  mysql> SELECT nom, nbre_apprenant FROM fabrique;
                  +-----------------+----------------+
                  | nom             | nbre_apprenant |
                  +-----------------+----------------+
                  | simplon_dakar   |             26 |
                  | simplon_mali    |             26 |
                  | Sonatel_Academy |             26 |
                  +-----------------+----------------+
          



   5.  afficher la liste des référentiels par fabrique



               mysql> SELECT referentiel.nom_ref,fabrique.nom FROM referentiel left join fabrique ON fabrique.id=referentiel.id;
               +------------------+---------------+
               | nom_ref          | nom           |
               +------------------+---------------+
               | referent_digital | simplon_dakar |
               | Developpeur_web  | simplon_mali  |
               +------------------+---------------+






   6.  afficher la liste des apprenants qui ont au moins un contrat



               mysql> SELECT id,nom,prenom,contrat FROM apprenant WHERE contrat>=1;
               +----+--------+---------+---------+
               | id | nom    | prenom  | contrat |
               +----+--------+---------+---------+
               |  1 | MARIGO | Mamadou |       1 |
               +----+--------+---------+---------+
               1 row in set (0.00 sec)



    7. Ecrire l’ordre sql qui permet d’ajouter un champ ‘ouverte’ de type booléen à la table colonne




                       mysql> ALTER TABLE cohorte ADD COLUMN ouverte BOOL NOT NULL;
                       Query OK, 0 rows affected (1.05 sec)
                       Records: 0  Duplicates: 0  Warnings: 0


                       mysql> UPDATE cohorte SET ouverte='1'  WHERE id=1;
                       Query OK, 1 row affected (0.09 sec)
                       Rows matched: 1  Changed: 1  Warnings: 0



                       mysql> SELECT*FROM cohorte;
                      +----+------------+------------+------------------+---------+
                      | id | date_debut | date_fin   | nombre_apprenant | ouverte |
                      +----+------------+------------+------------------+---------+
                      |  1 | 2019-03-14 | 2019-11-11 |               26 |       1 |
                      +----+------------+------------+------------------+---------+







     8.  Modifier le type du champ sexe, au lien de booléen mettez Char(1)




                    mysql> ALTER TABLE apprenant
                         -> MODIFY sexe CHAR(1) NOT NULL;
                         Query OK, 2 rows affected (1.23 sec)
                         Records: 2  Duplicates: 0  Warnings: 0


                    mysql> UPDATE apprenant
                         -> SET sexe='m'
                         -> WHERE id=1;
                         Query OK, 1 row affected (0.07 sec)
                         Rows matched: 1  Changed: 1  Warnings: 0

                    mysql> UPDATE apprenant SET sexe='m' WHERE id=2;
                    Query OK, 1 row affected (0.08 sec)
                    Rows matched: 1  Changed: 1  Warnings: 0




                   mysql> SELECT*FROM apprenant;
   +----+--------+---------+-----------+----------------+------+-------------------+-----------+----------------+------------+-------------+
   | id | nom    | prenom  | statut    | date_naissance | sexe | email             | tel       | id_referentiel | id_cohorte | id_fabrique |
   +----+--------+---------+-----------+----------------+------+-------------------+-----------+----------------+------------+-------------+
   |  1 | MARIGO | Mamadou | apprenant | 1991-04-23     | m    | mamadou@gmail.com | 777260074 |              1 |          1 |           1 |
   |  2 | Ndong  | Raphael | apprenant | 1991-03-02     | m    | rapha@gmail.com   | 787786556 |              2 |          1 |           3 |
   +----+--------+---------+-----------+----------------+------+-------------------+-----------+----------------+------------+-------------+
   2 rows in set (0.00 sec)

    
