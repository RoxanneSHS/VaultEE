BEGIN ~JC_DRW06~

IF ~Global("ReturnNashQuest","GLOBAL",7) GlobalGT("Chapter","GLOBAL",5) Global("ReturnNashQuestNandin","GLOBAL",1)~
THEN BEGIN 6DRW00
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 6DRW02
  IF ~~ THEN REPLY @2 GOTO 6DRW02
  IF ~~ THEN REPLY @3 GOTO 6DRW03
END

IF ~Global("ReturnNashQuest","GLOBAL",7) GlobalGT("Chapter","GLOBAL",5) Global("ReturnNashQuestNandin","GLOBAL",3)~ THEN BEGIN 6DRW01
  SAY @4
  IF ~~ THEN DO ~GiveItemCreate("MISCDRW3",LastTalkedToBy,0,0,0)~ REPLY @5 GOTO 6DRW02
  IF ~~ THEN DO ~GiveItemCreate("MISCDRW3",LastTalkedToBy,0,0,0)~ REPLY @6 GOTO 6DRW02
  IF ~~ THEN DO ~GiveItemCreate("MISCDRW3",LastTalkedToBy,0,0,0)~ REPLY @3 GOTO 6DRW03
END

IF ~~ THEN BEGIN 6DRW02
  SAY @7
  IF ~~ THEN JOURNAL @8 EXIT
END

IF ~~ THEN BEGIN 6DRW03
  SAY @9
  IF ~~ THEN JOURNAL @10 EXIT
END