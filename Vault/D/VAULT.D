
APPEND ~THALAN~ 


IF ~~ THEN BEGIN VLT1
  SAY @0
  IF ~~ THEN DO ~SetGlobal("ThalanDrowArtifact","GLOBAL",1)~ EXIT END

IF ~~ THEN BEGIN VLT2
  SAY @1
  IF ~~ THEN REPLY @2 GOTO VLT3
  IF ~~ THEN REPLY @3 EXIT END

IF ~~ THEN BEGIN VLT3
  SAY @4
  IF ~Global("ThalanVampRevenge","GLOBAL",0)~ THEN REPLY @5 DO ~SetGlobal("ThalanVampRevenge","GLOBAL",1)~ JOURNAL @6 EXIT END
END

REPLACE_SAY THALAN 35 @7
ALTER_TRANS THALAN BEGIN 35 END BEGIN 1 2 END BEGIN ~TRIGGER~ ~NumTimesTalkedToLT(3)~ END
EXTEND_BOTTOM THALAN 35
IF ~GlobalLT("ThalanDrowArtifact","GLOBAL",1) PartyHasItem("MISCDRW2") Global("TransformedChicken","GLOBAL",2) !Dead("Melicamp")~ THEN REPLY @8 GOTO VLT1
IF ~PartyHasItem("SW1HVAM") Global("ThalanVampRevenge","GLOBAL",0)~ THEN REPLY @9 GOTO VLT2
END

ADD_STATE_TRIGGER AMNIS3 0 ~GlobalLT("ReturnNashQuest","GLOBAL",7)~

APPEND ~AMNIS3~ 

IF ~Global("ReturnNashQuest","GLOBAL",7) Global("ReturnNashAmnish","GLOBAL",0)~ THEN BEGIN VLT4 
  SAY @10
  IF ~~ THEN JOURNAL @11 DO ~SetGlobal("ReturnNashAmnish","GLOBAL",1)~ EXIT END

IF ~Global("ReturnNashQuest","GLOBAL",7) Global("ReturnNashAmnish","GLOBAL",1)~ THEN BEGIN VLT5 
  SAY @10
  IF ~~ THEN EXIT END

IF WEIGHT #5 ~Global("ReturnNashQuest","GLOBAL",8) Global("ReturnNashAmnish","GLOBAL",1)~ THEN BEGIN FixAmnis
  SAY @12
  IF ~~ THEN EXIT
END
END

ALTER_TRANS BELT BEGIN 11 END BEGIN 0 1 END BEGIN ~ACTION~ ~AddexperienceParty(4000) SetGlobal("DukeThanks","GLOBAL",1)~ END

ADD_STATE_TRIGGER BRAN 1 ~GlobalLT("VestibuleQuest","GLOBAL",1)~
ADD_STATE_TRIGGER BLANE 3 ~GlobalLT("VestibuleQuest","GLOBAL",1)~

APPEND ~BLANE~

IF WEIGHT #1 ~Global("VestibuleQuest","GLOBAL",1)~ THEN BEGIN VLT6
  SAY @13
  IF ~~ THEN GOTO VLT13 END

IF~~ THEN BEGIN VLT7
  SAY @14
  IF~~ THEN DO ~CreateCreature("JC_DEM01",[540.175],5) CreateCreature("JC_SKE01",[645.245],5) CreateCreature("JC_SKE02",[410.115],5) SetGlobal("VestibuleQuest","GLOBAL",2)~ EXIT END

IF~~ THEN BEGIN VLT8
  SAY @15
  IF~~ THEN REPLY @16 GOTO VLT9
  IF~~ THEN REPLY @17 GOTO VLT9 END

IF~~ THEN BEGIN VLT9
  SAY @18
  IF~~ THEN DO ~CreateCreature("JC_DEM01",[540.175],5) CreateCreature("JC_SKE01",[645.245],5) CreateCreature("JC_SKE02",[410.115],5) SetGlobal("VestibuleQuest","GLOBAL",2)~ EXIT END

IF ~Global("VestibuleQuest","GLOBAL",3) Global("VestibuleBlane","GLOBAL",0)~ THEN BEGIN VLT10
  SAY @19
  IF~~ THEN DO ~SetGlobal("VestibuleBlane","GLOBAL",1)~ EXIT END

IF ~Global("VestibuleBlane","GLOBAL",1)~ THEN BEGIN VLT11
  SAY @20
  IF~~ THEN REPLY @21 DO ~StartStore("JC_TEM01",LastTalkedToBy(Myself))~ EXIT
  IF~~ THEN REPLY @22 EXIT END

IF WEIGHT #0 ~InParty("EDWIN") See("EDWIN")~ THEN BEGIN VLT12
  SAY @23
  IF ~~ THEN DO ~ActionOverride("BRAN",Enemy()) ChangeEnemyAlly(Myself,EVILCUTOFF) Wait(6) CreateCreature("JC_DEM01",[540.175],5) CreateCreature("JC_SKE01",[645.245],5) CreateCreature("JC_SKE02",[410.115],5)
SetGlobal("VestibuleQuest","GLOBAL",2)~ EXIT END

IF ~~ THEN BEGIN VLT13
  SAY @24
  IF~~ THEN REPLY @25 GOTO VLT7
  IF~~ THEN REPLY @26 GOTO VLT8
  IF~~ THEN REPLY @27 GOTO VLT7 END
END


APPEND ~BRAN~

IF WEIGHT #1 ~Global("VestibuleQuest","GLOBAL",1)~ THEN BEGIN VLT14
  SAY @28
  IF ~~ THEN EXIT END

IF WEIGHT #2 ~Global("VestibuleQuest","GLOBAL",2)~ THEN BEGIN VLT15
  SAY @28
  IF ~~ THEN EXIT END

IF ~Global("VestibuleQuest","GLOBAL",3) Global("VestibuleBran","GLOBAL",0)~ THEN BEGIN VLT16
  SAY @29
  IF~~ THEN DO ~SetGlobal("VestibuleBran","GLOBAL",1)~ EXIT END

IF ~Global("VestibuleQuest","GLOBAL",3) Global("VestibuleBran","GLOBAL",1)~ THEN BEGIN VLT17
  SAY @30
  IF ~~ THEN EXIT END

IF WEIGHT #0 ~InParty("EDWIN") See("EDWIN")~ THEN BEGIN VLT18
  SAY @23
  IF ~~ THEN DO ~ActionOverride("BLANE",Enemy()) ChangeEnemyAlly(Myself,EVILCUTOFF) Wait(6) CreateCreature("JC_DEM01",[540.175],5) CreateCreature("JC_SKE01",[645.245],5) CreateCreature("JC_SKE02",[410.115],5)
SetGlobal("VestibuleQuest","GLOBAL",2)~ EXIT END

IF ~Global("VestibuleQuest","GLOBAL",5) Global("VestibuleBran","GLOBAL",1)~ THEN BEGIN VLT19
  SAY @31
 IF ~~ THEN JOURNAL @32 DO ~SetGlobal("VestibuleBran","GLOBAL",2)~ EXIT END

IF ~Global("VestibuleQuest","GLOBAL",5) Global("VestibuleBran","GLOBAL",2) PartyHasItem("MISC36") !PartyHasItem("HAMM02")~ THEN BEGIN VLT20
  SAY @33
  IF ~~ THEN EXIT END

IF ~Global("VestibuleQuest","GLOBAL",5) Global("VestibuleBran","GLOBAL",2) !PartyHasItem("MISC36") PartyHasItem("HAMM02")~
THEN BEGIN VLT21
  SAY @34
  IF ~~ THEN EXIT END

IF ~Global("VestibuleQuest","GLOBAL",5) Global("VestibuleBran","GLOBAL",2) !PartyHasItem("MISC36") !PartyHasItem("HAMM02")~
THEN BEGIN VLT22
  SAY @35
  IF ~~ THEN EXIT END

IF ~Global("VestibuleQuest","GLOBAL",5) Global("VestibuleBran","GLOBAL",2) PartyHasItem("MISC36") PartyHasItem("HAMM02")~ THEN BEGIN VLT23
  SAY @36
  IF ~~ THEN DO ~ForceSpell(Myself,CLERIC_SPIRITUAL_HAMMER) TakePartyItem("MISC36") TakePartyItem("HAMM02") DestroyItem("HAMM02") GiveItemCreate("HAMMLAT",LastTalkedToBy(Myself),0,0,0) SetGlobal("VestibuleBran","GLOBAL",3)~ EXIT END

IF ~Global("VestibuleQuest","GLOBAL",5) Global("VestibuleBran","GLOBAL",3)~ THEN BEGIN VLT24
  SAY @37
  IF ~~ THEN EXIT END
END


ALTER_TRANS DELTAN BEGIN 10 11 END BEGIN 0 END BEGIN ~ACTION~ ~GiveGoldForce(2000) SetGlobal("HelpEltan","GLOBAL",2) GiveItem("BOOK68",LastTalkedToBy) AddexperienceParty(4000) IncrementChapter("%CHPTXT6%") AddJournalEntry(@38,INFO) ActionOverride(Player1,LeaveAreaLUAPanic("%WyrmsCrossing%","",[4295.3415],0)) ActionOverride(Player1,LeaveAreaLUA("%WyrmsCrossing%","",[4295.3415],0)) ActionOverride(Player2,LeaveAreaLUA("%WyrmsCrossing%","",[4295.3415],0)) ActionOverride(Player3,LeaveAreaLUA("%WyrmsCrossing%","",[4295.3415],0)) ActionOverride(Player4,LeaveAreaLUA("%WyrmsCrossing%","",[4295.3415],0)) ActionOverride(Player5,LeaveAreaLUA("%WyrmsCrossing%","",[4295.3415],0)) ActionOverride(Player6,LeaveAreaLUA("%WyrmsCrossing%","",[4295.3415],0)) DestroySelf()~ END


APPEND ~GANDOL~

IF ~Dead("DICK") !Dead("JC_OGR01") GlobalTimerExpired("GullyOgreTimer","GLOBAL") GlobalGT("GullyOgre","GLOBAL",1) Global("GullyOgreHead","GLOBAL",0)~ THEN BEGIN VLT25
  SAY @39
  IF ~~ THEN REPLY @40 DO ~SetGlobal("GullyOgreHead","GLOBAL",1)~ JOURNAL @41 EXIT END

IF ~!Dead("JC_OGR01") GlobalGT("GullyOgre","GLOBAL",1) Global("GullyOgreHead","GLOBAL",1)~ THEN BEGIN VLT26
  SAY @42
  IF ~~ THEN REPLY @43 EXIT
  IF ~~ THEN REPLY @44 EXIT
  IF ~~ THEN REPLY @45 GOTO VLT27
  IF ~~ THEN REPLY @46 EXIT END

IF ~~ THEN BEGIN VLT27
  SAY @47
  IF ~~ THEN REPLY @48 EXIT
  IF ~~ THEN REPLY @49 EXIT
  IF ~~ THEN REPLY @50 GOTO VLT28
  IF ~~ THEN REPLY @51 EXIT
  IF ~~ THEN REPLY @52 EXIT END

IF ~~ THEN BEGIN VLT28
  SAY @53
  IF ~~ THEN REPLY @43 EXIT
  IF ~~ THEN REPLY @54 DO ~SetGlobal("GullyOgreHead","GLOBAL",2)~ JOURNAL @55 EXIT END

IF ~Dead("JC_OGR01") Global("GullyOgre","GLOBAL",4) Global("GullyOgreReward","GLOBAL",0)~ THEN BEGIN VLT29
  SAY @56
  IF ~~ THEN DO ~GiveGoldForce(1500) GiveItemCreate("POTN52",LastTalkedToBy,2,0,0) GiveItemCreate("POTN52",LastTalkedToBy,3,0,0) SetGlobal("GullyOgreReward","GLOBAL",1) EscapeAreaDestroy(90)~ JOURNAL @57 EXIT END

IF WEIGHT #4 ~Global("GullyOgreReward","GLOBAL",1) Global("GullyKoboldReward","GLOBAL",1)~ THEN BEGIN VLT30
  SAY @58
  IF ~~ THEN EXIT END
END

SET_WEIGHT GANDOL 22 #5
REPLACE_SAY GANDOL 22 @59
ADD_STATE_TRIGGER GANDOL 22 ~!Dead("JC_OGR01") !GlobalTimerExpired("GullyOgreTimer","GLOBAL") Global("GullyKoboldReward","GLOBAL",1)~
ADD_STATE_TRIGGER GANDOL 23 ~Global("GullyKoboldReward","GLOBAL",0)~
ALTER_TRANS GANDOL BEGIN 23 END BEGIN 0 END BEGIN ~ACTION~ ~GiveGoldForce(250) EraseJournalEntry(@60) EraseJournalEntry(@61) EraseJournalEntry(@62) EraseJournalEntry(@63) EraseJournalEntry(@64) EraseJournalEntry(@65) EraseJournalEntry(@66) SetGlobal("GullyKoboldReward","GLOBAL",1) RandomWalk()~ END
REPLACE_TRANS_ACTION GANDOL BEGIN 4 END BEGIN 0 END ~EscapeAreaDestroy(90)~ ~RandomWalk()~


REPLACE_SAY MELICA 26 @67

ALTER_TRANS MELICA BEGIN 26 END BEGIN 0 END BEGIN ~REPLY~ ~@68~ END

EXTEND_BOTTOM MELICA 26
IF ~PartyHasItem("MISCDRW2") Global("RobeMelicamp","GLOBAL",0)~ THEN REPLY @69 DO ~SetGlobal("RobeMelicamp","GLOBAL",1)~ GOTO VLT31
IF ~PartyHasItem("MISCDRW2") Global("RobeMelicamp","GLOBAL",1)~ THEN REPLY @69 GOTO VLT31
IF ~PartyHasItem("MISCDRW2") PartyHasItem("CLCK09") PartyHasItem("CLCK10") PartyHasItem("CLCK11") Global("RobeMelicamp","GLOBAL",1)~ THEN REPLY @70 GOTO VLT34
IF ~PartyHasItem("MISCDRW2") PartyHasItem("CLCK12") PartyHasItem("CLCK13") PartyHasItem("CLCK14") Global("RobeMelicamp","GLOBAL",1)~ THEN REPLY @71 GOTO VLT36
IF ~PartyHasItem("MISCDRW2") PartyHasItem("CLCK09") PartyHasItem("CLCK10") PartyHasItem("CLCK11") PartyHasItem("CLCK12") PartyHasItem("CLCK13") PartyHasItem("CLCK14") Global("RobeMelicamp","GLOBAL",1)~ THEN REPLY @72 GOTO VLT38
END

APPEND ~MELICA~

IF ~~ THEN BEGIN VLT31
  SAY @73
  IF ~~ THEN REPLY @74 GOTO VLT32 END

IF ~~ THEN BEGIN VLT32
  SAY @75
  IF ~~ THEN REPLY @76 GOTO VLT33 END

IF ~~ THEN BEGIN VLT33
  SAY @77
  IF ~Global("RobeMelicamp","GLOBAL",1) Global("RobeMelicampJournal","GLOBAL",0)~ THEN REPLY @78 JOURNAL @79 DO ~SetGlobal("RobeMelicampJournal","GLOBAL",1)~ EXIT
  IF ~Global("RobeMelicamp","GLOBAL",1) Global("RobeMelicampJournal","GLOBAL",1)~ THEN REPLY @78 EXIT END

IF ~~ THEN BEGIN VLT34
  SAY @80
  IF ~PartyGoldGT(7999)~ THEN REPLY @81 GOTO VLT35
  IF ~~ THEN REPLY @82 GOTO VLT40 END

IF ~~ THEN BEGIN VLT35
  SAY @83
  IF ~~ THEN DO ~TakePartyGold(8000) TakePartyItem("MISCDRW2") TakePartyItem("CLCK09") TakePartyItem("CLCK10") TakePartyItem("CLCK11") ForceSpell(Myself,WIZARD_GHOST_ARMOR) DestroyItem("MISCDRW2") DestroyItem("CLCK09") DestroyItem("CLCK10") DestroyItem("CLCK11") GiveItemCreate("CLCKST2",LastTalkedToBy(Myself),0,0,0) SetGlobal("RobeMelicamp","GLOBAL",2)~ GOTO VLT41 END

IF ~~ THEN BEGIN VLT36
  SAY @84
  IF ~PartyGoldGT(7999)~ THEN REPLY @85 GOTO VLT37
  IF ~~ THEN REPLY @86 GOTO VLT40 END

IF ~~ THEN BEGIN VLT37
  SAY @87
  IF ~~ THEN DO ~TakePartyGold(8000) TakePartyItem("MISCDRW2") TakePartyItem("CLCK12") TakePartyItem("CLCK13") TakePartyItem("CLCK14")	ForceSpell(Myself,WIZARD_GHOST_ARMOR) DestroyItem("MISCDRW2") DestroyItem("CLCK12") DestroyItem("CLCK13") DestroyItem("CLCK14") GiveItemCreate("CLCKST3",LastTalkedToBy(Myself),0,0,0) SetGlobal("RobeMelicamp","GLOBAL",2)~ GOTO VLT41 END

IF ~~ THEN BEGIN VLT38
  SAY @88
  IF ~PartyGoldGT(19999)~ THEN REPLY @89 GOTO VLT39
  IF ~~ THEN REPLY @90 GOTO VLT40 END

IF ~~ THEN BEGIN VLT39
  SAY @91
  IF ~~ THEN DO ~ForceSpell(Myself,WIZARD_GHOST_ARMOR) TakePartyGold(20000) TakePartyItem("MISCDRW2") TakePartyItem("CLCK09") TakePartyItem("CLCK10")	TakePartyItem("CLCK11")	TakePartyItem("CLCK12")	TakePartyItem("CLCK13") TakePartyItem("CLCK14") ForceSpell(Myself,CLERIC_DRAW_UPON_HOLY_MIGHT) DestroyItem("MISCDRW2") DestroyItem("CLCK09") DestroyItem("CLCK10") DestroyItem("CLCK11") DestroyItem("CLCK12") DestroyItem("CLCK13") DestroyItem("CLCK14") GiveItemCreate("CLCKST1",LastTalkedToBy(Myself),0,0,0) SetGlobal("RobeMelicamp","GLOBAL",2)~ GOTO VLT41 END

IF ~~ THEN BEGIN VLT40
  SAY @92
  IF ~~ THEN REPLY @93 GOTO VLT31
  IF ~PartyHasItem("MISCDRW2") PartyHasItem("CLCK09") PartyHasItem("CLCK10") PartyHasItem("CLCK11") Global("RobeMelicamp","GLOBAL",1)~ THEN REPLY @70 GOTO VLT34
  IF ~PartyHasItem("MISCDRW2") PartyHasItem("CLCK12") PartyHasItem("CLCK13") PartyHasItem("CLCK14") Global("RobeMelicamp","GLOBAL",1)~ THEN REPLY @71 GOTO VLT36
  IF ~PartyHasItem("MISCDRW2") PartyHasItem("CLCK09") PartyHasItem("CLCK10") PartyHasItem("CLCK11") PartyHasItem("CLCK12") PartyHasItem("CLCK13") PartyHasItem("CLCK14") Global("RobeMelicamp","GLOBAL",1)~ THEN REPLY @72 GOTO VLT38
IF ~~ THEN REPLY @68 EXIT END

IF ~~ THEN BEGIN VLT41
  SAY @94
  IF ~~ THEN EXIT END
END


SET_WEIGHT TAEROM 14 #8
EXTEND_BOTTOM TAEROM 14
  IF ~PartyHasItem("SW1HVAM") GlobalLT("TaeromTellsOfSword","GLOBAL",1)~ THEN REPLY @95 GOTO VLT45 END
EXTEND_BOTTOM TAEROM 14
  IF ~PartyHasItem("HELM04") Global("HelmDefenseTaerom","GLOBAL",0)~ THEN REPLY @96 GOTO VLT44 END
EXTEND_BOTTOM TAEROM 14
  IF ~PartyHasItem("HELM05") Global("HelmInfravisionTaerom","GLOBAL",0)~ THEN REPLY @97 GOTO VLT48 END
EXTEND_BOTTOM TAEROM 14
  IF ~PartyHasItem("HELM06") Global("HelmCharmTaerom","GLOBAL",0)~ THEN REPLY @98 GOTO VLT49 END
EXTEND_BOTTOM TAEROM 14
  IF ~PartyGoldGT(8999) PartyHasItem("MISC52") Global("TaeromTellsOfPlatWy","GLOBAL",1) Global("WyvernTaerom","GLOBAL",0)~ THEN REPLY @173 GOTO VLT43 END

APPEND ~TAEROM~

IF WEIGHT #7 ~PartyHasItem("MISC52") Global("TaeromTellsOfPlatWy","GLOBAL",0) Global("WyvernTaerom","GLOBAL",0)~ THEN BEGIN VLT42
  SAY @99
  IF ~PartyGoldGT(8999)~ THEN REPLY @100 DO ~SetGlobal("TaeromTellsOfPlatWy","GLOBAL",1)~ GOTO VLT43
  IF ~~ THEN REPLY @101 DO ~StartStore("Taerum",LastTalkedToBy()) SetGlobal("TaeromTellsOfPlatWy","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @172 DO ~SetGlobal("TaeromTellsOfPlatWy","GLOBAL",1)~ GOTO VLT47 END

IF ~~ THEN BEGIN VLT43
  SAY @102
  IF ~~ THEN DO ~TakePartyGold(9000) TakePartyItem("MISC52") DestroyItem("MISC52") ForceSpell(Myself,WIZARD_ARMOR) GiveItemCreate("PLATWY",LastTalkedToBy,0,0,0) SetGlobal("WyvernTaerom","GLOBAL",1)~ EXIT END

IF ~~ THEN BEGIN VLT44
  SAY @103
  IF ~PartyGoldGT(4999) PartyHasItem("MISC38") PartyHasItem("RING06") PartyHasItem("HELM04")~ THEN REPLY @104 GOTO VLT44A
  IF ~PartyGoldGT(4999) PartyHasItem("MISC38") PartyHasItem("RING25") PartyHasItem("HELM04")~ THEN REPLY @105 GOTO VLT44B
  IF ~PartyGoldGT(4999) PartyHasItem("MISC39") PartyHasItem("RING06") PartyHasItem("HELM04")~ THEN REPLY @106 GOTO VLT44C
  IF ~PartyGoldGT(4999) PartyHasItem("MISC39") PartyHasItem("RING25") PartyHasItem("HELM04")~ THEN REPLY @107 GOTO VLT44D
  IF ~~ THEN REPLY @108 GOTO VLT47 END

IF ~~
THEN BEGIN VLT44A
  SAY @109
  IF ~~ THEN DO ~TakePartyGold(5000) TakePartyItem("MISC38") TakePartyItem("RING06") TakePartyItem("HELM04") ForceSpell(Myself,WIZARD_ARMOR)	DestroyItem("MISC38") DestroyItem("RING06") DestroyItem("HELM04") GiveItemCreate("HELM04A",LastTalkedToBy,0,0,0) SetGlobal("HelmDefenseTaerom","GLOBAL",1)~ EXIT END

IF ~~
THEN BEGIN VLT44B
  SAY @109
  IF ~~ THEN DO ~TakePartyGold(5000) TakePartyItem("MISC38") TakePartyItem("RING25") TakePartyItem("HELM04") ForceSpell(Myself,WIZARD_ARMOR)	DestroyItem("MISC38") DestroyItem("RING25") DestroyItem("HELM04") GiveItemCreate("HELM04A",LastTalkedToBy,0,0,0) SetGlobal("HelmDefenseTaerom","GLOBAL",1)~ EXIT END

IF ~~
THEN BEGIN VLT44C
  SAY @109
  IF ~~ THEN DO ~TakePartyGold(5000) TakePartyItem("MISC39") TakePartyItem("RING06") TakePartyItem("HELM04") ForceSpell(Myself,WIZARD_ARMOR) DestroyItem("MISC39") DestroyItem("RING06") DestroyItem("HELM04") GiveItemCreate("HELM04A",LastTalkedToBy,0,0,0) SetGlobal("HelmDefenseTaerom","GLOBAL",1)~ EXIT END

IF ~~
THEN BEGIN VLT44D
  SAY @109
  IF ~~ THEN DO ~TakePartyGold(5000) TakePartyItem("MISC39") TakePartyItem("RING25") TakePartyItem("HELM04") ForceSpell(Myself,WIZARD_ARMOR) DestroyItem("MISC39") DestroyItem("RING25") DestroyItem("HELM04") GiveItemCreate("HELM04A",LastTalkedToBy,0,0,0) SetGlobal("HelmDefenseTaerom","GLOBAL",1)~ EXIT END

IF ~~
THEN BEGIN VLT45
  SAY @110
  IF ~~ THEN REPLY @111 DO ~SetGlobal("TaeromTellsOfSword","GLOBAL",1) StartStore("Taerum",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @112 DO ~SetGlobal("TaeromTellsOfSword","GLOBAL",1)~ GOTO VLT47
  IF ~~ THEN REPLY @113 DO ~SetGlobal("TaeromTellsOfSword","GLOBAL",1)~ GOTO VLT46 END

IF ~~
THEN BEGIN VLT46
  SAY @114
  IF ~Global("TheVault","GLOBAL",0)~ THEN DO ~AddexperienceParty(1000) SetGlobal("TheVault","GLOBAL",1)~ JOURNAL @115 EXIT
  IF ~Global("TheVault","GLOBAL",1)~ THEN EXIT END

IF ~~
THEN BEGIN VLT47
  SAY @116
  IF ~~ THEN REPLY @117 DO ~StartStore("Taerum",LastTalkedToBy())~ EXIT
  IF ~PartyHasItem("SW1HVAM") GlobalLT("TaeromTellsOfSword","GLOBAL",1)~ THEN REPLY @118 GOTO VLT45
  IF ~PartyHasItem("HELM04") Global("HelmDefenseTaerom","GLOBAL",0)~ THEN REPLY @96 GOTO VLT44
  IF ~PartyHasItem("HELM05") Global("HelmInfravisionTaerom","GLOBAL",0)~ THEN REPLY @97 GOTO VLT48
  IF ~PartyHasItem("HELM06") Global("HelmCharmTaerom","GLOBAL",0)~ THEN REPLY @98 GOTO VLT49
  IF ~PartyGoldGT(8999) PartyHasItem("MISC52") Global("TaeromTellsOfPlatWy","GLOBAL",1) Global("WyvernTaerom","GLOBAL",0)~ THEN REPLY @173 GOTO VLT43
  IF ~~ THEN REPLY @119 EXIT END

IF ~~
THEN BEGIN VLT48
  SAY @120
  IF ~PartyGoldGT(4999) PartyHasItem("MISC38") PartyHasItem("RING06") PartyHasItem("HELM05")~ THEN REPLY @104 GOTO VLT48A
  IF ~PartyGoldGT(4999) PartyHasItem("MISC38") PartyHasItem("RING25") PartyHasItem("HELM05")~ THEN REPLY @105 GOTO VLT48B
  IF ~PartyGoldGT(4999) PartyHasItem("MISC39") PartyHasItem("RING06") PartyHasItem("HELM05")~ THEN REPLY @106 GOTO VLT48C
  IF ~PartyGoldGT(4999) PartyHasItem("MISC39") PartyHasItem("RING25") PartyHasItem("HELM05")~ THEN REPLY @107 GOTO VLT48D
  IF ~~ THEN REPLY @108 GOTO VLT47 END

IF ~~
THEN BEGIN VLT48A
  SAY @121
  IF ~~ THEN DO ~TakePartyGold(5000) TakePartyItem("MISC38") TakePartyItem("RING06") TakePartyItem("HELM05") ForceSpell(Myself,WIZARD_ARMOR) DestroyItem("MISC38") DestroyItem("RING06") DestroyItem("HELM05") GiveItemCreate("HELM05A",LastTalkedToBy,0,0,0) SetGlobal("HelmInfravisionTaerom","GLOBAL",1)~ EXIT END

IF ~~
THEN BEGIN VLT48B
  SAY @121
  IF ~~ THEN DO ~TakePartyGold(5000) TakePartyItem("MISC38") TakePartyItem("RING25") TakePartyItem("HELM05") ForceSpell(Myself,WIZARD_ARMOR) DestroyItem("MISC38") DestroyItem("RING25") DestroyItem("HELM05") GiveItemCreate("HELM05A",LastTalkedToBy,0,0,0) SetGlobal("HelmInfravisionTaerom","GLOBAL",1)~ EXIT END

IF ~~
THEN BEGIN VLT48C
  SAY @121
  IF ~~ THEN DO ~TakePartyGold(5000) TakePartyItem("MISC39") TakePartyItem("RING06") TakePartyItem("HELM05") ForceSpell(Myself,WIZARD_ARMOR) DestroyItem("MISC39") DestroyItem("RING06") DestroyItem("HELM05") GiveItemCreate("HELM05A",LastTalkedToBy,0,0,0) SetGlobal("HelmInfravisionTaerom","GLOBAL",1)~ EXIT END

IF ~~
THEN BEGIN VLT48D
  SAY @121
  IF ~~ THEN DO ~TakePartyGold(5000) TakePartyItem("MISC39") TakePartyItem("RING25") TakePartyItem("HELM05") ForceSpell(Myself,WIZARD_ARMOR) DestroyItem("MISC39") DestroyItem("RING25") DestroyItem("HELM05") GiveItemCreate("HELM05A",LastTalkedToBy,0,0,0) SetGlobal("HelmInfravisionTaerom","GLOBAL",1)~ EXIT END

IF ~~
THEN BEGIN VLT49
  SAY @122
  IF ~PartyGoldGT(4999) PartyHasItem("MISC38") PartyHasItem("RING06") PartyHasItem("HELM06")~ THEN REPLY @104 GOTO VLT49A
  IF ~PartyGoldGT(4999) PartyHasItem("MISC38") PartyHasItem("RING25") PartyHasItem("HELM06")~ THEN REPLY @105 GOTO VLT49B
  IF ~PartyGoldGT(4999) PartyHasItem("MISC39") PartyHasItem("RING06") PartyHasItem("HELM06")~ THEN REPLY @106 GOTO VLT49C
  IF ~PartyGoldGT(4999) PartyHasItem("MISC39") PartyHasItem("RING25") PartyHasItem("HELM06")~ THEN REPLY @107 GOTO VLT49D
  IF ~~ THEN REPLY @108 GOTO VLT47 END

IF ~~
THEN BEGIN VLT49A
  SAY @121
  IF ~~ THEN DO ~TakePartyGold(5000) TakePartyItem("MISC38") TakePartyItem("RING06") TakePartyItem("HELM06") ForceSpell(Myself,WIZARD_ARMOR) DestroyItem("MISC38") DestroyItem("RING06") DestroyItem("HELM06") GiveItemCreate("HELM06A",LastTalkedToBy,0,0,0) SetGlobal("HelmCharmTaerom","GLOBAL",1)~ EXIT END

IF ~~
THEN BEGIN VLT49B
  SAY @121
  IF ~~ THEN DO ~TakePartyGold(5000) TakePartyItem("MISC38") TakePartyItem("RING25") TakePartyItem("HELM06") ForceSpell(Myself,WIZARD_ARMOR) DestroyItem("MISC38") DestroyItem("RING25") DestroyItem("HELM06") GiveItemCreate("HELM06A",LastTalkedToBy,0,0,0) SetGlobal("HelmCharmTaerom","GLOBAL",1)~ EXIT END

IF ~~
THEN BEGIN VLT49C
  SAY @121
  IF ~~ THEN DO ~TakePartyGold(5000) TakePartyItem("MISC39") TakePartyItem("RING06") TakePartyItem("HELM06") ForceSpell(Myself,WIZARD_ARMOR) DestroyItem("MISC39") DestroyItem("RING06") DestroyItem("HELM06") GiveItemCreate("HELM06A",LastTalkedToBy,0,0,0) SetGlobal("HelmCharmTaerom","GLOBAL",1)~ EXIT END

IF ~~
THEN BEGIN VLT49D
  SAY @121
  IF ~~ THEN DO ~TakePartyGold(5000) TakePartyItem("MISC39") TakePartyItem("RING25") TakePartyItem("HELM06") ForceSpell(Myself,WIZARD_ARMOR) DestroyItem("MISC39") DestroyItem("RING25") DestroyItem("HELM06") GiveItemCreate("HELM06A",LastTalkedToBy,0,0,0) SetGlobal("HelmCharmTaerom","GLOBAL",1)~ EXIT END
END


SET_WEIGHT KELDDA 0 #8
APPEND ~KELDDA~

IF WEIGHT #5 ~!Dead("Blane") !Dead("Bran") Global("VestibuleQuest","GLOBAL",3) Global("VestibuleKeld","GLOBAL",0)~ THEN BEGIN  VLT50
  SAY @123
  IF ~~ THEN REPLY @124 GOTO VLT51
  IF ~~ THEN REPLY @125 GOTO VLT52
  IF ~!Dead("JC_DEM02")~ THEN REPLY @126 GOTO 8
  IF ~Dead("JC_DEM02")~ THEN REPLY @126 EXIT
  IF ~~ THEN REPLY @127 DO ~StartStore("tem3402",LastTalkedToBy())~ EXIT END

IF ~~ THEN BEGIN VLT51
 SAY @128
 IF ~~ THEN REPLY @129 GOTO VLT52
 IF ~~ THEN REPLY @130 GOTO VLT54 END

IF ~~ THEN BEGIN VLT52
 SAY @131
 IF ~~ THEN GOTO VLT53 END

IF ~~ THEN BEGIN VLT53
SAY  @132
IF ~~ THEN DO ~GiveItemCreate("POTN52",LastTalkedToBy,5,0,0) GiveItemCreate("BULL04",LastTalkedToBy,40,0,0) SetGlobal("VestibuleKeld","GLOBAL",1)~ JOURNAL @133 EXIT END

IF ~~ THEN BEGIN VLT54
 SAY @134
 IF ~~ THEN GOTO VLT55 END 

IF ~~ THEN BEGIN VLT55
SAY @135
 IF ~~ THEN REPLY @136 GOTO VLT52 END

IF WEIGHT #6 ~InParty("EDWIN") Dead("Blane") Dead("Bran") Global("VestibuleQuest","GLOBAL",3) Global("VestibuleKeld","GLOBAL",0)~ THEN BEGIN VLT56
SAY @137
IF ~~ THEN DO ~Enemy()~ EXIT END

IF WEIGHT #7 ~Global("VestibuleQuest","GLOBAL",5) Global("VestibuleKeld","GLOBAL",1)~ THEN BEGIN VLT57
SAY @138
IF ~~ THEN DO ~GiveGoldForce(5000) AddexperienceParty(3000) SetGlobal("VestibuleKeld","GLOBAL",2)~ EXIT END
END


ADD_STATE_TRIGGER DENAK 3 ~Global("VestibuleQuest","GLOBAL",0)~
ALTER_TRANS DENAK BEGIN 0 END BEGIN 0 1 2 END BEGIN ~TRIGGER~ ~Global("VestibuleQuest","GLOBAL",0)~ END

EXTEND_BOTTOM DENAK 0
  IF ~Global("VestibuleQuest","GLOBAL",3)~ THEN REPLY @139 GOTO VLT61 END
EXTEND_BOTTOM DENAK 0
  IF ~Global("VestibuleQuest","GLOBAL",3)~ THEN REPLY @140 GOTO VLT60 END
EXTEND_BOTTOM DENAK 0
  IF ~Global("VestibuleQuest","GLOBAL",3)~ THEN REPLY @141 GOTO VLT61 END
EXTEND_BOTTOM DENAK 0
  IF ~Global("VestibuleQuest","GLOBAL",3)~ THEN REPLY @142 GOTO VLT60 END

APPEND ~DENAK~

IF ~~ THEN BEGIN VLT58
  SAY @143
  IF ~~ THEN DO ~ActionOverride("BRENDAN",Enemy()) ActionOverride("LASALA",Enemy()) ActionOverride("DIANA",Enemy()) Enemy() SetGlobal("VestibuleRelease","GLOBAL",1) SetGlobal("VestibuleQuest","GLOBAL",4)~ EXIT END

IF WEIGHT #6 ~InParty("EDWIN") Global("VestibuleQuest","GLOBAL",3)~ THEN BEGIN VLT59
  SAY @144
  IF ~~ THEN DO ~ActionOverride("BRENDAN",EscapeArea()) ActionOverride("LASALA",EscapeArea()) ActionOverride("DIANA",EscapeArea()) EscapeArea() SetGlobal("VestibuleRelease","GLOBAL",1)~ EXIT END

IF ~~ THEN BEGIN VLT60
  SAY @145
  IF ~~ THEN DO ~ActionOverride("BRENDAN",Enemy()) ActionOverride("LASALA",Enemy()) ActionOverride("DIANA",Enemy()) Enemy() SetGlobal("VestibuleRelease","GLOBAL",1) SetGlobal("VestibuleQuest","GLOBAL",4)~ EXIT END

IF ~~ THEN BEGIN VLT61
  SAY @146
  IF ~~ THEN DO ~ActionOverride("BRENDAN",Enemy()) ActionOverride("LASALA",Enemy()) ActionOverride("DIANA",Enemy()) Enemy() SetGlobal("VestibuleRelease","GLOBAL",1) SetGlobal("VestibuleQuest","GLOBAL",4)~ EXIT END
END


EXTEND_BOTTOM DIVINE 1
  IF ~PartyHasItem("SW1HVAM")~ THEN REPLY @147 GOTO VLT62 END
EXTEND_BOTTOM DIVINE 1
  IF ~Global("DivinerVault","GLOBAL",1)~ THEN REPLY @148 GOTO VLT63 END 
EXTEND_BOTTOM DIVINE 1
  IF ~Global("PriestGondVault","GLOBAL",1)~ THEN REPLY @149 GOTO VLT63 END

APPEND ~DIVINE~

IF ~~ THEN BEGIN VLT62
  SAY @150
  IF ~Global("DivinerVault","GLOBAL",0)~ THEN DO ~SetGlobal("DivinerVault","GLOBAL",1) SetGlobal("TheVault","GLOBAL",1)~ JOURNAL @151 GOTO 8
IF ~GlobalGT("DivinerVault","GLOBAL",0)~ THEN DO ~~ GOTO 8 END

IF ~~ THEN BEGIN VLT63
  SAY @152
  IF ~~ THEN DO ~SetGlobal("DivinerVault","GLOBAL",2) SetGlobal("PriestGondVault","GLOBAL",2)~ JOURNAL @153 GOTO 8 END
END


ADD_TRANS_ACTION DOOMSAY BEGIN 1 2 3 END BEGIN 0 END ~CreateCreature("DOOMGU",[2660.1575],0) CreateCreature("DOOMGU",[2660.1575],0)~


EXTEND_BOTTOM KEEPER 1
  IF ~Global("Chapter","GLOBAL",%tutu_chapter_6%) PartyHasItem("BOOKDRW")~ THEN REPLY @154 DO ~TakePartyItem("BOOKDRW")~ GOTO 4 END
ALTER_TRANS KEEPER BEGIN 1 END BEGIN 2 END BEGIN ~TRIGGER~ ~!PartyHasItem("BOOK68") !PartyHasItem("BOOKDRW")~ END


ALTER_TRANS LIIA BEGIN 8 END BEGIN 0 1 END BEGIN ~TRIGGER~ ~GlobalLT("DukeThanks","GLOBAL",1) GlobalLT("LiiaGivesExperience","Global",1)~ END
ADD_TRANS_ACTION LIIA BEGIN 8 END BEGIN 0 1 END ~AddexperienceParty(4000) SetGlobal("LiiaGivesExperience","Global",1)~


EXTEND_BOTTOM PGOND 0
  IF ~PartyHasItem("SW1HVAM")~ THEN REPLY @155 GOTO VLT64 END

APPEND ~PGOND~

IF ~~ THEN BEGIN VLT64
  SAY @156
  IF ~PartyGoldGT(9999)~ THEN REPLY @157 DO ~TakePartyGold(10000)~ GOTO VLT65
  IF ~~ THEN REPLY @158 EXIT
  IF ~~ THEN REPLY @159 DO ~StartStore("tem0131",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @160 EXIT END

IF ~~ THEN BEGIN VLT65
  SAY @161
  IF ~~ THEN GOTO VLT66
END

IF ~~ THEN BEGIN VLT66
  SAY @162
  IF ~Global("PriestGondVault","GLOBAL",0)~ THEN DO ~SetGlobal("PriestGondVault","GLOBAL",1) SetGlobal("TheVault","GLOBAL",1) ForceSpell(Myself,CLERIC_DETECT_EVIL)~ JOURNAL @163 EXIT
  IF ~Global("PriestGondVault","GLOBAL",1)~ THEN DO ~~ EXIT END
END

REPLACE_TRANS_ACTION %tutu_scriptbg%KNIGHT%eet_var% BEGIN 1 END BEGIN 0 END ~TakePartyItem("MISC82")~ ~~

SET_WEIGHT ULCAST 3 #8
SET_WEIGHT ULCAST 6 #7
REPLACE_SAY ULCAST 6 @171
ADD_STATE_TRIGGER ULCAST 6 ~Global("VaultUlcasterJournal","GLOBAL",1)~
REPLACE_TRANS_ACTION ULCAST BEGIN 6 END BEGIN 0 END ~GiveItemCreate("SW1H19",LastTalkedToBy,0,0,0)~ ~GiveItemCreate("SW1HVAM",LastTalkedToBy,0,0,0) AddexperienceParty(4000)~
ALTER_TRANS ULCAST BEGIN 6 END BEGIN 0 END BEGIN ~JOURNAL~ ~@164~ END

APPEND ~ULCAST~

IF WEIGHT #5 ~PartyHasItem("BOOK68") Global("VaultUlcasterJournal","GLOBAL",0)~ THEN BEGIN VLT67
  SAY @165
  IF ~~ THEN DO ~AddexperienceParty(1000) SetGlobal("VaultUlcasterJournal","GLOBAL",1)~ JOURNAL @166 EXIT END

IF WEIGHT #6 ~PartyHasItem("BOOK68") !PartyHasItem("MISC82") !PartyHasItem("MISC48") Global("VaultUlcasterJournal","GLOBAL",1)~ THEN BEGIN VLT68
  SAY @165
  IF ~~ THEN EXIT END
END

ADD_STATE_TRIGGER ZHURLO 4 ~GlobalLT("HelpZhurlong","GLOBAL",1)~

ADD_TRANS_TRIGGER ZHURLO 5 ~!Global("ReturnNashQuest","GLOBAL",6)~ DO 0

ADD_STATE_TRIGGER ZHURLO 5 ~Global("HelpZhurlong","GLOBAL",1)~

EXTEND_BOTTOM ZHURLO 5
IF ~Global("ReturnNashQuest","GLOBAL",6) Global("ReturnNashQuestZhurlo","GLOBAL",0)~ THEN REPLY @168 GOTO VLT70
END

APPEND ~ZHURLO~
IF ~~ THEN BEGIN VLT70
SAY @169
IF ~~ THEN DO ~TakePartyGold(20) SetGlobal("ReturnNashQuestZhurlo","GLOBAL",1)~ JOURNAL @170 EXIT END
END
