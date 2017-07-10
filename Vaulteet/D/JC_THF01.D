BEGIN ~JC_THF01~

IF ~Global("ReturnNashQuest","GLOBAL",0) PartyHasItem("BOOK68")~ THEN BEGIN 1THF00
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1THF01
  IF ~~ THEN REPLY @2 GOTO 1THF02
  IF ~~ THEN REPLY @3 GOTO 1THF03
END


IF ~~ THEN BEGIN 1THF01
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 1THF05
  IF ~~ THEN REPLY @6 GOTO 1THF04
  IF ~~ THEN REPLY @7 GOTO 1THF03
END

IF ~~ THEN BEGIN 1THF02
  SAY @8
  IF ~~ THEN REPLY @5 GOTO 1THF05
  IF ~~ THEN REPLY @9 GOTO 1THF04
  IF ~~ THEN REPLY @10 GOTO 1THF03
  IF ~~ THEN REPLY @11 GOTO 1THF06
END

IF ~~ THEN BEGIN 1THF03
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 1THF06
  IF ~~ THEN REPLY @14 GOTO 1THF07
END

IF ~~ THEN BEGIN 1THF04
  SAY @15
  IF ~~ THEN JOURNAL @16 DO ~TakePartyItem("BOOK68") DestroyItem("BOOK68") ForceSpell(Myself,DRYAD_TELEPORT) CreateCreature("JC_THF03",[4445.3505],0) CreateCreature("JC_THF03",[4445.3505],0) CreateCreature("JC_THF03",[4445.3505],0) CreateCreature("JC_THF03",[-1.-1],0) SetGlobal("ReturnNashQuest","GLOBAL",1) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 1THF05
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 1THF06
END

IF ~~ THEN BEGIN 1THF06
  SAY @19
  IF ~CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @20 GOTO 1THF12
  IF ~~ THEN REPLY @21 GOTO 1THF07
  IF ~~ THEN REPLY @22 GOTO 1THF04
END

IF ~~ THEN BEGIN 1THF07
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 1THF08
  IF ~~ THEN REPLY @25 GOTO 1THF09
END

IF ~~ THEN BEGIN 1THF08
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 1THF10
  IF ~~ THEN REPLY @28 GOTO 1THF04
  IF ~~ THEN REPLY @29 GOTO 1THF11
  IF ~CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY @30 GOTO 1THF14
END

IF ~~ THEN BEGIN 1THF09
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 1THF08
END

IF ~~ THEN BEGIN 1THF10
  SAY @33
  IF ~~ THEN REPLY @34 GOTO 1THF11
  IF ~~ THEN REPLY @35 GOTO 1THF04
END

IF ~~ THEN BEGIN 1THF11
  SAY @36
  IF ~~ THEN REPLY @37 JOURNAL @38 DO ~AddexperienceParty(1500) TakePartyItem("BOOK68") DestroyItem("BOOK68") GiveItemCreate("BOOKDRW",LastTalkedToBy,0,0,0) SetGlobal("ReturnNashQuest","GLOBAL",5) EscapeArea()~ EXIT
  IF ~~ THEN REPLY @39 JOURNAL @38 DO ~AddexperienceParty(1500) TakePartyItem("BOOK68") DestroyItem("BOOK68") GiveItemCreate("BOOKDRW",LastTalkedToBy,0,0,0) SetGlobal("ReturnNashQuest","GLOBAL",5) EscapeArea()~ EXIT
  IF ~~ THEN REPLY @40 JOURNAL @38 DO ~AddexperienceParty(1500) TakePartyItem("BOOK68") DestroyItem("BOOK68") GiveItemCreate("BOOKDRW",LastTalkedToBy,0,0,0) SetGlobal("ReturnNashQuest","GLOBAL",5) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 1THF12
  SAY @41
  IF ~~ THEN REPLY @42 GOTO 1THF07 
  IF ~~ THEN REPLY @43 GOTO 1THF13
END

IF ~~ THEN BEGIN 1THF13
  SAY @44
IF ~~ THEN JOURNAL @45 DO ~AddexperienceParty(2000) TakePartyItem("BOOK68") DestroyItem("BOOK68") ForceSpell(Myself,DRYAD_TELEPORT) CreateCreature("JC_THF03",[4445.3505],0) CreateCreature("JC_THF03",[4445.3505],0) CreateCreature("JC_THF03",[4445.3505],0) CreateCreature("JC_THF03",[-1.-1],0) SetGlobal("ReturnNashQuest","GLOBAL",1) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 1THF14
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 1THF07 
  IF ~~ THEN REPLY @48 GOTO 1THF13
END

IF ~Global("ReturnNashQuest","GLOBAL",2)~ THEN BEGIN 1THF15
  SAY @49
  IF ~~ THEN REPLY @50 JOURNAL @51 DO ~ForceSpell(Myself,DRYAD_TELEPORT) CreateCreature("JC_THF03",[-1.-1],0) CreateCreature("JC_THF03",[-1.-1],0) CreateCreature("JC_THF03",[-1.-1],0) CreateCreature("%tutu_scriptbg%STALKE%eet_var%",[-1.-1],0) CreateCreature("%tutu_scriptbg%STALKE%eet_var%",[-1.-1],0) CreateCreature("%tutu_scriptbg%STALKE%eet_var%",[-1.-1],0) SetGlobal("ReturnNashQuest","GLOBAL",3) DestroySelf()~ EXIT
END

IF ~Global("ReturnNashQuest","GLOBAL",3) Global("ReturnNashQuestZernan","GLOBAL",2)~ THEN BEGIN 1THF16
  SAY @52
  IF ~~ THEN REPLY @53 JOURNAL @54 DO ~ForceSpell(Myself,WIZARD_IMPROVED_INVISIBILITY) ChangeEnemyAlly(Myself,EVILCUTOFF) Enemy() CreateCreature("JC_THF03",[820.630],0) CreateCreature("JC_THF03",[820.630],0) CreateCreature("JC_THF03",[820.630],0) CreateCreature("JC_THF03",[-1.-1],0) ForceSpell(Myself,WIZARD_HASTE) CreateCreature("%tutu_scriptbg%STALKE%eet_var%",[-1.-1],0) CreateCreature("%tutu_scriptbg%STALKE%eet_var%",[-1.-1],0) CreateCreature("%tutu_scriptbg%STALKE%eet_var%",[-1.-1],0) SetGlobal("ReturnNashQuest","GLOBAL",4)~ EXIT
END

