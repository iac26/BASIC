10 dim bibliothequel$(1000)
20 dim bibliothequea$(1000)
30 dim index$(1000)
40 dim lecteurs$(1000)
50 open "/Network/Servers/lilas2.sevelin.info/Volumes/ServerData/Data/Eleves/L141371/Documents/Informatique/Biblio/misc" for input as #0
60 open "/Network/Servers/lilas2.sevelin.info/Volumes/ServerData/Data/Eleves/L141371/Documents/Informatique/Biblio/lecteurs" for input as #1
70 open "/Network/Servers/lilas2.sevelin.info/Volumes/ServerData/Data/Eleves/L141371/Documents/Informatique/Biblio/livres" for input as #2
80 open "/Network/Servers/lilas2.sevelin.info/Volumes/ServerData/Data/Eleves/L141371/Documents/Informatique/Biblio/auteurs" for input as #3
90 open "/Network/Servers/lilas2.sevelin.info/Volumes/ServerData/Data/Eleves/L141371/Documents/Informatique/Biblio/index" for input as #4
100 input #0,countb
110 input #0,countl
120 for lect = 0 to countl
130 input #1,lecteurs$(lect)
140 next lect
150 for biblio = 0 to countb
160 input #2,bibliothequel$(biblio)
170 input #3,bibliothequea$(biblio)
180 input #4,index$(biblio)
190 next biblio
200 close #0
210 close #1
220 close #2
230 close #3
240 close #4
250 while quitter = 0
260 let livre = 0
270 let lecteur = 0
280 let present = 0
290 cls
300 print "MENU:"
310 print "1 emprunter/ rendre"
320 print "2 lecteurs"
330 print "3 catalogue"
340 print "4 ajouter un livre"
350 print "5 ajouter un lecteur"
360 print "6 quitter"
370 input "menu: ",menu1
380 select case menu1
390 case 1
400 cls
410 print "choisir un livre: "
420 for i = 0 to countb
430 print i;": "+bibliothequel$(i);" de ";bibliothequea$(i);" emprunté par ";index$(i)
440 next i
450 input "livre: ",livre
460 if index$(livre) = "personne" then 
470 cls
480 print "choisir un lecteur: "
490 for k = 0 to countl
500 print k;": ";lecteurs$(k)
510 next k
520 input "lecteur: ",lecteur
530 index$(livre) = lecteurs$(lecteur)
540 else 
550 index$(livre) = "personne"
560 endif
570 case 2
580 cls
585 print "choisir un lecteur: "
590 for j = 0 to countl
600 print j;": ";lecteurs$(j)
610 next j
620 input "lecteur: ",lecteur
630 cls
640 print lecteurs$(lecteur);": "
650 for l = 0 to countb
660 if index$(l) = lecteurs$(lecteur)
670  print l;": "+bibliothequel$(l);" de ";bibliothequea$(l)
680  present = 1
690 endif
700 next l
710 if present = 0 then 
720 print "aucun livre"
730 endif
740 get trash$
750 case 3
760 cls
770 print "catalogue: "
780 for m = 0 to countb
790 print m;": "+bibliothequel$(m);" de ";bibliothequea$(m);" emprunté par ";index$(m)
800 next m
810 get trash$
820 case 4
830 cls
840 countb = countb+1
850 print "ajouter un livre"
860 input "livre: ",livre$
870 input "auteur: ",auteur$
880 bibliothequel$(countb) = livre$
890 bibliothequea$(countb) = auteur$
900 index$(countb) = "personne"
910 case 5
920 cls
930 countl = countl+1
940 print "ajouter un lecteur"
950 input "lecteur: ",lecteur$
960 lecteurs$(countl) = lecteur$
970 case 6
980 quitter = 1
990 open "/Network/Servers/lilas2.sevelin.info/Volumes/ServerData/Data/Eleves/L141371/Documents/Informatique/Biblio/misc" for output as #0
1000 open "/Network/Servers/lilas2.sevelin.info/Volumes/ServerData/Data/Eleves/L141371/Documents/Informatique/Biblio/lecteurs" for output as #1
1010 open "/Network/Servers/lilas2.sevelin.info/Volumes/ServerData/Data/Eleves/L141371/Documents/Informatique/Biblio/livres" for output as #2
1020 open "/Network/Servers/lilas2.sevelin.info/Volumes/ServerData/Data/Eleves/L141371/Documents/Informatique/Biblio/auteurs" for output as #3
1030 open "/Network/Servers/lilas2.sevelin.info/Volumes/ServerData/Data/Eleves/L141371/Documents/Informatique/Biblio/index" for output as #4
1040 print #0,countb
1050 print #0,countl
1060 for lect = 0 to countl
1070 print #1,lecteurs$(lect)
1080 next lect
1090 for biblio = 0 to countb
1100 print #2,bibliothequel$(biblio)
1110 print #3,bibliothequea$(biblio)
1120 print #4,index$(biblio)
1130 next biblio
1140 close #0
1150 close #1
1160 close #2
1170 close #3
1180 close #4
1190 cls
1200 print "Bye..."
1210 end select
1220 wend