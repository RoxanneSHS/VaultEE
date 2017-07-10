BEGIN ~JRNL~

IF ~Global("ReturnNashQuestNandin","GLOBAL",1)~ THEN BEGIN JRNL0
  SAY @0
  IF ~~ THEN JOURNAL @1 DO ~Wait(10) EscapeArea()~ EXIT
END


IF ~Global("ReturnNashQuestNandin","GLOBAL",3)~ THEN BEGIN JRNL1
  SAY @0
  IF ~~ THEN JOURNAL @2 DO ~Wait(10) EscapeArea()~ EXIT
END

