from random import*
a = randint(0,9)
nbre_essai = 3
while nbre_essai > 0:	
        n = input( " entrez un nombre entre 0 et 9 : ")
        n=int(n)
if n == a:
        print("excellent")
        nbre_essai -= 1
else :
        print("Dommage, vous avez perdu")

