BEGIN ~JC_THF04~

IF ~Global("ReturnNashQuest","GLOBAL",5) Global("Chapter","GLOBAL",6)~ THEN BEGIN 4THF00
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 4THF01
  IF ~~ THEN REPLY @2 GOTO 4THF01
  IF ~~ THEN REPLY @3 GOTO 4THF06
END

IF ~~ THEN BEGIN 4THF01
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4THF02
END

IF ~~ THEN BEGIN 4THF02
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4THF03
END

IF ~~ THEN BEGIN 4THF03
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 4THF04
  IF ~~ THEN REPLY @10 GOTO 4THF05
END

IF ~~ THEN BEGIN 4THF04
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 4THF05
END

IF ~~ THEN BEGIN 4THF05
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 4THF08
  IF ~~ THEN REPLY @15 GOTO 4THF06
  IF ~Global("HelpZhurlong","GLOBAL",1)~ THEN REPLY @16 GOTO 4THF07
END

IF ~~ THEN BEGIN 4THF06
  SAY @17
  IF ~~ THEN REPLY @18 JOURNAL @19 DO ~ForceSpell(Myself,WIZARD_IMPROVED_INVISIBILITY) ChangeEnemyAlly(Myself,EVILCUTOFF)
Enemy() CreateCreature("GOLSTO01",[-1.-1],0) CreateCreature("GOLSTO01",[-1.-1],0) CreateCreature("%tutu_scriptbg%STALKE%eet_var%",[-1.-1],0) CreateCreature("%tutu_scriptbg%STALKE%eet_var%",[-1.-1],0) CreateCreature("JC_THF03",[4740.2915],0) CreateCreature("JC_THF03",[4740.2915],0)
SetGlobal("ReturnNashQuest","GLOBAL",99)~ EXIT
END

IF ~~ THEN BEGIN 4THF07
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 4THF08
  IF ~~ THEN REPLY @22 GOTO 4THF06
END

IF ~~ THEN BEGIN 4THF08
  SAY @23
  IF ~~ THEN REPLY @24 JOURNAL @25 DO ~AddexperienceParty(1000) SetGlobal("ReturnNashQuest","GLOBAL",6) EscapeArea()~ EXIT
END

IF ~Global("ReturnNashQuest","GLOBAL",6) Global("ReturnNashQuestNandin","GLOBAL",3) Global("ReturnNashQuestZhurlo","GLOBAL",1)~ THEN BEGIN 4THF09
  SAY @26
  IF ~~ THEN DO ~SetGlobal("ReturnNashQuest","GLOBAL",7)~ EXIT
END

IF ~GlobalGT("ReturnNashQuest","GLOBAL",6)~ THEN BEGIN 4THF10
  SAY @27
  IF ~Dead("JC_DRW06") PartyHasItem("BOOK68") Global("ReturnNashQuest","GLOBAL",8) Global("ReturnNashQuestNandin","GLOBAL",3)~ THEN REPLY @28 GOTO 4THF11
  IF ~!Dead("JC_DRW06") !PartyHasItem("BOOK68")~ THEN REPLY @29 EXIT
END

IF ~~ THEN BEGIN 4THF11
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 4THF12
END

IF ~~ THEN BEGIN 4THF12
  SAY @32
  IF ~~ THEN DO ~ForceSpell(Myself,WIZARD_IMPROVED_INVISIBILITY) ChangeEnemyAlly(Myself,EVILCUTOFF) Enemy() CreateCreature("GOLSTO01",[-1.-1],0) CreateCreature("GOLSTO01",[-1.-1],0) CreateCreature("%tutu_scriptbg%STALKE%eet_var%",[-1.-1],0) CreateCreature("%tutu_scriptbg%STALKE%eet_var%",[-1.-1],0) CreateCreature("JC_THF03",[820.630],0) CreateCreature("JC_THF03",[820.630],0) SetGlobal("ReturnNashQuestNandin","GLOBAL",4)~ JOURNAL @33 EXIT
END