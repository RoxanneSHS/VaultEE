BEGIN ~REDENTOR~

IF WEIGHT #1 ~True()~ THEN BEGIN R0
  SAY @0
  IF ~~ THEN DO ~CreateCreature("%tutu_scriptbg%STALKE%eet_var%",[1945.1600],0) CreateCreature("%tutu_scriptbg%STALKE%eet_var%",[1875.1800],0) CreateCreature("DOOMGU",[1775.1615],0) Enemy()~ EXIT
END

IF WEIGHT #0 ~InParty("EDWIN")~ THEN BEGIN R1
  SAY @1
  IF ~~ THEN GOTO R2
END

IF ~~ THEN BEGIN R2
  SAY @2
  IF ~~ THEN DO ~CreateCreature("%tutu_scriptbg%STALKE%eet_var%",[1945.1600],0) CreateCreature("%tutu_scriptbg%STALKE%eet_var%",[1875.1800],0) CreateCreature("DOOMGU",[1775.1615],0) Enemy()~ EXIT
END