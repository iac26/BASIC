10 fall = 0
20 fcount = 0
30 wcheck = 0
40 wcount = 1
45 randomize timer
50 wnumber = rnd(22740)
60 open "/Volumes/DISK_IMG/pendu/liste_pendu.txt" for input as #0
70 for a = 1 to wnumber
80 input #0,trash$
90 next a
100 input #0,word$
105 close #0
110 wdraw$ = ""
120 wlen = len(word$)
130 dim wchars$(wlen)
140 dim wbdraw$(wlen)
150 wguessed$ = ""
160 for i = 1 to wlen
170 wbdraw$(i) = "-"
180 wdraw$ = wdraw$+wbdraw$(i)
190 wchars$(i) = mid$(word$,i,1)
200 print wchars$(i)
210 next i
220 print wdraw$
230 cls
240 print "PENDU PAR iacopo"
250 print ""
260 print ""
270 print ""
280 print ""
290 print ""
300 print ""
310 print ""
320 print wdraw$
330 print wguessed$
340 while fall = 0
350 wcheck = 0
360 wdraw$ = ""
370 input "lettre: ",guess$
380 for j = 1 to wlen
390 if wchars$(j) = guess$ then
400 wbdraw$(j) = guess$
410 wcheck = 1
420 wcount = wcount+1
430 endif
440 wdraw$ = wdraw$+wbdraw$(j)
450 next j
460 if wcheck = 0 then
470 fcount = fcount+1
480 wguessed$ = wguessed$+guess$+" "
490 endif
500 cls
510 print "PENDU PAR iacopo"
520 select case fcount
530 print " "
540 print " "
550 print " "
560 print " "
570 print " "
580 print " "
590 print " "
600 print wdraw$
610 print wguessed$
630 case 1
640 print " "
650 print "|"
660 print "|"
670 print "|"
680 print "|"
690 print "|"
700 print "|"
710 print wdraw$
720 print wguessed$
740 case 2
750 print "__________"
760 print "|"
770 print "|"
780 print "|"
790 print "|"
800 print "|"
810 print "|"
820 print wdraw$
830 print wguessed$
850 case 3
860 print "__________"
870 print "|        |"
880 print "|"
890 print "|"
900 print "|"
910 print "|"
920 print "|"
930 print wdraw$
940 print wguessed$
950 case 4

970 print "__________"
980 print "|        |"
990 print "|        O"
1000 print "|"
1010 print "|"
1020 print "|"
1030 print "|"
1040 print wdraw$
1050 print wguessed$
1070 case 5
1080 print "__________"
1090 print "|        |"
1100 print "|        O"
1110 print "|        |"
1120 print "|"
1130 print "|"
1140 print "|"
1150 print wdraw$
1160 print wguessed$
1180 case 6
1190 print "__________"
1200 print "|        |"
1210 print "|        O"
1220 print "|      --|--"
1230 print "|"
1240 print "|"
1250 print "|"
1260 print wdraw$
1270 print wguessed$
1290 case 7
1300 print "__________"
1310 print "|        |"
1320 print "|        O"
1330 print "|      --|--"
1340 print "|        |"
1350 print "|"
1360 print "|"
1370 print wdraw$
1380 print wguessed$
1400 case 8
1410 print "__________"
1420 print "|        |"
1430 print "|        O"
1440 print "|      --|--"
1450 print "|        |"
1460 print "|       / \"
1470 print "|"
1480 print wdraw$
1490 print wguessed$
1500 fall = 1
1510 end select
1520 if wcount > wlen then
1530 fall = 2
1540 endif
1550 wend
1560 if fall = 1 then
1570 print "DEFAITE!"
1580 endif
1590 if fall = 2 then
1600 print "VICTOIRE!"
1610 endif
9999 end