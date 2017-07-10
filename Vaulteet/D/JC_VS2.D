BEGIN ~JC_VS2~

IF ~!PartyHasItem("SW1HVAM")~ THEN BEGIN 2VS0 
  SAY @0
  IF ~~ THEN DO ~ChangeEnemyAlly(Myself,NEUTRAL) ForceSpell(Myself,WIZARD_FIREBALL) ForceSpell(Myself,WIZARD_FIREBALL)
ForceSpell(Myself,WIZARD_IMPROVED_INVISIBILITY)~ EXIT
END

IF ~!Dead("JC_VAM")~ THEN BEGIN 2VS0A
  SAY @1
  IF ~~ THEN DO ~ChangeEnemyAlly(Myself,NEUTRAL) ForceSpell(Myself,WIZARD_FIREBALL) ForceSpell(Myself,WIZARD_FIREBALL)
ForceSpell(Myself,WIZARD_IMPROVED_INVISIBILITY)~ EXIT
END

IF ~PartyHasItem("SW1HVAM") Dead("JC_VAM")~ THEN BEGIN 2VS1 
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2VS2
  IF ~!Global("TheVaultPortal","GLOBAL",2) Global("VaultVisitedARW000","GLOBAL",1)~ THEN REPLY @4 GOTO 2VS7
  IF ~!Global("TheVaultPortal","GLOBAL",3) Global("VaultVisitedARU008","GLOBAL",1)~ THEN REPLY @5 GOTO 2VS8
  IF ~!Global("TheVaultPortal","GLOBAL",4) Global("VaultVisitedARD000","GLOBAL",1)~ THEN REPLY @6 GOTO 2VS9
  IF ~!Global("TheVaultPortal","GLOBAL",5) Global("VaultVisitedAR7300","GLOBAL",1)~ THEN REPLY @7 GOTO 2VS10
  IF ~!Global("TheVaultPortal","GLOBAL",6) Global("VaultVisitedAR8600","GLOBAL",1)~ THEN REPLY @8 GOTO 2VS11
  IF ~!Global("TheVaultPortal","GLOBAL",7) Global("VaultVisitedAR8700","GLOBAL",1)~ THEN REPLY @9 GOTO 2VS12
  IF ~!Global("TheVaultPortal","GLOBAL",8) Global("VaultVisitedAR6700","GLOBAL",1)~ THEN REPLY @11 GOTO 2VS13
  IF ~!Global("TheVaultPortal","GLOBAL",9) Global("VaultVisitedAR4400","GLOBAL",1)~ THEN REPLY @12 GOTO 2VS14
  IF ~!Global("TheVaultPortal","GLOBAL",1) Global("VaultVisitedVT0001","GLOBAL",1)~ THEN REPLY @13 GOTO 2VS16
  IF ~~ THEN REPLY @14 DO ~StartStore("JC_VS2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @15 DO ~ForceSpell(Myself,WIZARD_FIREBALL) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 2VS2 
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 2VS3
  IF ~~ THEN REPLY @18 GOTO 2VS6 
END

IF ~~ THEN BEGIN 2VS3 
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 2VS4
  IF ~~ THEN REPLY @21 GOTO 2VS5
  IF ~~ THEN REPLY @22 GOTO 2VS6
END

IF ~~ THEN BEGIN 2VS4 
  SAY @23
  IF ~~ THEN REPLY @21 GOTO 2VS5
  IF ~~ THEN REPLY @22 GOTO 2VS6 
END

IF ~~ THEN BEGIN 2VS5 
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 2VS2
  IF ~!Global("TheVaultPortal","GLOBAL",2) Global("VaultVisitedARW000","GLOBAL",1)~ THEN REPLY @4 GOTO 2VS7
  IF ~!Global("TheVaultPortal","GLOBAL",3) Global("VaultVisitedARU008","GLOBAL",1)~ THEN REPLY @5 GOTO 2VS8
  IF ~!Global("TheVaultPortal","GLOBAL",4) Global("VaultVisitedARD000","GLOBAL",1)~ THEN REPLY @6 GOTO 2VS9
  IF ~!Global("TheVaultPortal","GLOBAL",5) Global("VaultVisitedAR7300","GLOBAL",1)~ THEN REPLY @7 GOTO 2VS10
  IF ~!Global("TheVaultPortal","GLOBAL",6) Global("VaultVisitedAR8600","GLOBAL",1)~ THEN REPLY @8 GOTO 2VS11
  IF ~!Global("TheVaultPortal","GLOBAL",7) Global("VaultVisitedAR8700","GLOBAL",1)~ THEN REPLY @9 GOTO 2VS12
  IF ~!Global("TheVaultPortal","GLOBAL",8) Global("VaultVisitedAR6700","GLOBAL",1)~ THEN REPLY @11 GOTO 2VS13
  IF ~!Global("TheVaultPortal","GLOBAL",9) Global("VaultVisitedAR4400","GLOBAL",1)~ THEN REPLY @12 GOTO 2VS14
  IF ~!Global("TheVaultPortal","GLOBAL",1) Global("VaultVisitedVT0001","GLOBAL",1)~ THEN REPLY @13 GOTO 2VS16
  IF ~~ THEN REPLY @14 DO ~StartStore("JC_VS2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @15 DO ~ForceSpell(Myself,WIZARD_FIREBALL) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 2VS6 
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 2VS4
  IF ~~ THEN REPLY @28 GOTO 2VS5
END

IF ~~ THEN BEGIN 2VS7 
  SAY @29
  IF ~PartyGoldGT(4999)~ THEN REPLY @30 DO ~TakePartyGold(5000)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%IsleofBalduranS%","",[4747.3515],12)) ActionOverride(Player2,LeaveAreaLUA("%IsleofBalduranS%","",[4672.3546],12)) ActionOverride(Player3,LeaveAreaLUA("%IsleofBalduranS%","",[4614.3561],12)) ActionOverride(Player4,LeaveAreaLUA("%IsleofBalduranS%","",[4545.3524],12)) ActionOverride(Player5,LeaveAreaLUA("%IsleofBalduranS%","",[4534.3588],12)) ActionOverride(Player6,LeaveAreaLUA("%IsleofBalduranS%","",[4473.3586],12))~ EXIT
  IF ~PartyHasItem("MISC45")~ THEN REPLY @31 DO ~TakePartyItemNum("MISC45",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%IsleofBalduranS%","",[4747.3515],12)) ActionOverride(Player2,LeaveAreaLUA("%IsleofBalduranS%","",[4672.3546],12)) ActionOverride(Player3,LeaveAreaLUA("%IsleofBalduranS%","",[4614.3561],12)) ActionOverride(Player4,LeaveAreaLUA("%IsleofBalduranS%","",[4545.3524],12)) ActionOverride(Player5,LeaveAreaLUA("%IsleofBalduranS%","",[4534.3588],12)) ActionOverride(Player6,LeaveAreaLUA("%IsleofBalduranS%","",[4473.3586],12))~ EXIT
  IF ~PartyHasItem("MISC44")~ THEN REPLY @32 DO ~TakePartyItemNum("MISC44",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%IsleofBalduranS%","",[4747.3515],12)) ActionOverride(Player2,LeaveAreaLUA("%IsleofBalduranS%","",[4672.3546],12)) ActionOverride(Player3,LeaveAreaLUA("%IsleofBalduranS%","",[4614.3561],12)) ActionOverride(Player4,LeaveAreaLUA("%IsleofBalduranS%","",[4545.3524],12)) ActionOverride(Player5,LeaveAreaLUA("%IsleofBalduranS%","",[4534.3588],12)) ActionOverride(Player6,LeaveAreaLUA("%IsleofBalduranS%","",[4473.3586],12))~ EXIT
  IF ~PartyHasItem("MISC43")~ THEN REPLY @33 DO ~TakePartyItemNum("MISC43",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%IsleofBalduranS%","",[4747.3515],12)) ActionOverride(Player2,LeaveAreaLUA("%IsleofBalduranS%","",[4672.3546],12)) ActionOverride(Player3,LeaveAreaLUA("%IsleofBalduranS%","",[4614.3561],12)) ActionOverride(Player4,LeaveAreaLUA("%IsleofBalduranS%","",[4545.3524],12)) ActionOverride(Player5,LeaveAreaLUA("%IsleofBalduranS%","",[4534.3588],12)) ActionOverride(Player6,LeaveAreaLUA("%IsleofBalduranS%","",[4473.3586],12))~ EXIT
  IF ~PartyHasItem("MISC42")~ THEN REPLY @34 DO ~TakePartyItemNum("MISC42",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%IsleofBalduranS%","",[4747.3515],12)) ActionOverride(Player2,LeaveAreaLUA("%IsleofBalduranS%","",[4672.3546],12)) ActionOverride(Player3,LeaveAreaLUA("%IsleofBalduranS%","",[4614.3561],12)) ActionOverride(Player4,LeaveAreaLUA("%IsleofBalduranS%","",[4545.3524],12)) ActionOverride(Player5,LeaveAreaLUA("%IsleofBalduranS%","",[4534.3588],12)) ActionOverride(Player6,LeaveAreaLUA("%IsleofBalduranS%","",[4473.3586],12))~ EXIT
  IF ~PartyHasItem("MISC41")~ THEN REPLY @35 DO ~TakePartyItemNum("MISC41",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%IsleofBalduranS%","",[4747.3515],12)) ActionOverride(Player2,LeaveAreaLUA("%IsleofBalduranS%","",[4672.3546],12)) ActionOverride(Player3,LeaveAreaLUA("%IsleofBalduranS%","",[4614.3561],12)) ActionOverride(Player4,LeaveAreaLUA("%IsleofBalduranS%","",[4545.3524],12)) ActionOverride(Player5,LeaveAreaLUA("%IsleofBalduranS%","",[4534.3588],12)) ActionOverride(Player6,LeaveAreaLUA("%IsleofBalduranS%","",[4473.3586],12))~ EXIT
  IF ~PartyHasItem("AMUL12")~ THEN REPLY @36 DO ~TakePartyItemNum("AMUL12",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%IsleofBalduranS%","",[4747.3515],12)) ActionOverride(Player2,LeaveAreaLUA("%IsleofBalduranS%","",[4672.3546],12)) ActionOverride(Player3,LeaveAreaLUA("%IsleofBalduranS%","",[4614.3561],12)) ActionOverride(Player4,LeaveAreaLUA("%IsleofBalduranS%","",[4545.3524],12)) ActionOverride(Player5,LeaveAreaLUA("%IsleofBalduranS%","",[4534.3588],12)) ActionOverride(Player6,LeaveAreaLUA("%IsleofBalduranS%","",[4473.3586],12))~ EXIT
  IF ~PartyHasItem("AMUL11")~ THEN REPLY @37 DO ~TakePartyItemNum("AMUL11",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%IsleofBalduranS%","",[4747.3515],12)) ActionOverride(Player2,LeaveAreaLUA("%IsleofBalduranS%","",[4672.3546],12)) ActionOverride(Player3,LeaveAreaLUA("%IsleofBalduranS%","",[4614.3561],12)) ActionOverride(Player4,LeaveAreaLUA("%IsleofBalduranS%","",[4545.3524],12)) ActionOverride(Player5,LeaveAreaLUA("%IsleofBalduranS%","",[4534.3588],12)) ActionOverride(Player6,LeaveAreaLUA("%IsleofBalduranS%","",[4473.3586],12))~ EXIT
  IF ~PartyHasItem("MISC16")~ THEN REPLY @38 DO ~TakePartyItemNum("MISC16",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%IsleofBalduranS%","",[4747.3515],12)) ActionOverride(Player2,LeaveAreaLUA("%IsleofBalduranS%","",[4672.3546],12)) ActionOverride(Player3,LeaveAreaLUA("%IsleofBalduranS%","",[4614.3561],12)) ActionOverride(Player4,LeaveAreaLUA("%IsleofBalduranS%","",[4545.3524],12)) ActionOverride(Player5,LeaveAreaLUA("%IsleofBalduranS%","",[4534.3588],12)) ActionOverride(Player6,LeaveAreaLUA("%IsleofBalduranS%","",[4473.3586],12))~ EXIT
  IF ~~ THEN REPLY @39 GOTO 2VS5
  IF ~~ THEN REPLY @40 DO ~ForceSpell(Myself,WIZARD_FIREBALL) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 2VS8 
  SAY @41
  IF ~PartyGoldGT(4999)~ THEN REPLY @30 DO ~TakePartyGold(5000)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%IceIsland%","",[553.492],12)) ActionOverride(Player2,LeaveAreaLUA("%IceIsland%","",[512.496],12)) ActionOverride(Player3,LeaveAreaLUA("%IceIsland%","",[473.497],12)) ActionOverride(Player4,LeaveAreaLUA("%IceIsland%","",[441.489],12)) ActionOverride(Player5,LeaveAreaLUA("%IceIsland%","",[398.486],12)) ActionOverride(Player6,LeaveAreaLUA("%IceIsland%","",[354.469],12))~ EXIT
  IF ~PartyHasItem("MISC45")~ THEN REPLY @31 DO ~TakePartyItemNum("MISC45",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%IceIsland%","",[553.492],12)) ActionOverride(Player2,LeaveAreaLUA("%IceIsland%","",[512.496],12)) ActionOverride(Player3,LeaveAreaLUA("%IceIsland%","",[473.497],12)) ActionOverride(Player4,LeaveAreaLUA("%IceIsland%","",[441.489],12)) ActionOverride(Player5,LeaveAreaLUA("%IceIsland%","",[398.486],12)) ActionOverride(Player6,LeaveAreaLUA("%IceIsland%","",[354.469],12))~ EXIT
  IF ~PartyHasItem("MISC44")~ THEN REPLY @32 DO ~TakePartyItemNum("MISC44",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%IceIsland%","",[553.492],12)) ActionOverride(Player2,LeaveAreaLUA("%IceIsland%","",[512.496],12)) ActionOverride(Player3,LeaveAreaLUA("%IceIsland%","",[473.497],12)) ActionOverride(Player4,LeaveAreaLUA("%IceIsland%","",[441.489],12)) ActionOverride(Player5,LeaveAreaLUA("%IceIsland%","",[398.486],12)) ActionOverride(Player6,LeaveAreaLUA("%IceIsland%","",[354.469],12))~ EXIT
  IF ~PartyHasItem("MISC43")~ THEN REPLY @33 DO ~TakePartyItemNum("MISC43",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%IceIsland%","",[553.492],12)) ActionOverride(Player2,LeaveAreaLUA("%IceIsland%","",[512.496],12)) ActionOverride(Player3,LeaveAreaLUA("%IceIsland%","",[473.497],12)) ActionOverride(Player4,LeaveAreaLUA("%IceIsland%","",[441.489],12)) ActionOverride(Player5,LeaveAreaLUA("%IceIsland%","",[398.486],12)) ActionOverride(Player6,LeaveAreaLUA("%IceIsland%","",[354.469],12))~ EXIT
  IF ~PartyHasItem("MISC42")~ THEN REPLY @34 DO ~TakePartyItemNum("MISC42",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%IceIsland%","",[553.492],12)) ActionOverride(Player2,LeaveAreaLUA("%IceIsland%","",[512.496],12)) ActionOverride(Player3,LeaveAreaLUA("%IceIsland%","",[473.497],12)) ActionOverride(Player4,LeaveAreaLUA("%IceIsland%","",[441.489],12)) ActionOverride(Player5,LeaveAreaLUA("%IceIsland%","",[398.486],12)) ActionOverride(Player6,LeaveAreaLUA("%IceIsland%","",[354.469],12))~ EXIT
  IF ~PartyHasItem("MISC41")~ THEN REPLY @35 DO ~TakePartyItemNum("MISC41",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%IceIsland%","",[553.492],12)) ActionOverride(Player2,LeaveAreaLUA("%IceIsland%","",[512.496],12)) ActionOverride(Player3,LeaveAreaLUA("%IceIsland%","",[473.497],12)) ActionOverride(Player4,LeaveAreaLUA("%IceIsland%","",[441.489],12)) ActionOverride(Player5,LeaveAreaLUA("%IceIsland%","",[398.486],12)) ActionOverride(Player6,LeaveAreaLUA("%IceIsland%","",[354.469],12))~ EXIT
  IF ~PartyHasItem("AMUL12")~ THEN REPLY @36 DO ~TakePartyItemNum("AMUL12",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%IceIsland%","",[553.492],12)) ActionOverride(Player2,LeaveAreaLUA("%IceIsland%","",[512.496],12)) ActionOverride(Player3,LeaveAreaLUA("%IceIsland%","",[473.497],12)) ActionOverride(Player4,LeaveAreaLUA("%IceIsland%","",[441.489],12)) ActionOverride(Player5,LeaveAreaLUA("%IceIsland%","",[398.486],12)) ActionOverride(Player6,LeaveAreaLUA("%IceIsland%","",[354.469],12))~ EXIT
  IF ~PartyHasItem("AMUL11")~ THEN REPLY @37 DO ~TakePartyItemNum("AMUL11",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%IceIsland%","",[553.492],12)) ActionOverride(Player2,LeaveAreaLUA("%IceIsland%","",[512.496],12)) ActionOverride(Player3,LeaveAreaLUA("%IceIsland%","",[473.497],12)) ActionOverride(Player4,LeaveAreaLUA("%IceIsland%","",[441.489],12)) ActionOverride(Player5,LeaveAreaLUA("%IceIsland%","",[398.486],12)) ActionOverride(Player6,LeaveAreaLUA("%IceIsland%","",[354.469],12))~ EXIT
  IF ~PartyHasItem("MISC17")~ THEN REPLY @42 DO ~TakePartyItemNum("MISC17",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%IceIsland%","",[553.492],12)) ActionOverride(Player2,LeaveAreaLUA("%IceIsland%","",[512.496],12)) ActionOverride(Player3,LeaveAreaLUA("%IceIsland%","",[473.497],12)) ActionOverride(Player4,LeaveAreaLUA("%IceIsland%","",[441.489],12)) ActionOverride(Player5,LeaveAreaLUA("%IceIsland%","",[398.486],12)) ActionOverride(Player6,LeaveAreaLUA("%IceIsland%","",[354.469],12))~ EXIT
  IF ~~ THEN REPLY @39 GOTO 2VS5
  IF ~~ THEN REPLY @40 DO ~ForceSpell(Myself,WIZARD_FIREBALL) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 2VS9 
  SAY @43
  IF ~PartyGoldGT(4999)~ THEN REPLY @30 DO ~TakePartyGold(5000)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%DurlagsTower%","",[2622.2289],12)) ActionOverride(Player2,LeaveAreaLUA("%DurlagsTower%","",[2688.2355],12)) ActionOverride(Player3,LeaveAreaLUA("%DurlagsTower%","",[2694.2302],12)) ActionOverride(Player4,LeaveAreaLUA("%DurlagsTower%","",[2625.2347],12)) ActionOverride(Player5,LeaveAreaLUA("%DurlagsTower%","",[2612.2407],12)) ActionOverride(Player6,LeaveAreaLUA("%DurlagsTower%","",[2677.2427],12))~ EXIT
  IF ~PartyHasItem("MISC45")~ THEN REPLY @31 DO ~TakePartyItemNum("MISC45",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%DurlagsTower%","",[2622.2289],12)) ActionOverride(Player2,LeaveAreaLUA("%DurlagsTower%","",[2688.2355],12)) ActionOverride(Player3,LeaveAreaLUA("%DurlagsTower%","",[2694.2302],12)) ActionOverride(Player4,LeaveAreaLUA("%DurlagsTower%","",[2625.2347],12)) ActionOverride(Player5,LeaveAreaLUA("%DurlagsTower%","",[2612.2407],12)) ActionOverride(Player6,LeaveAreaLUA("%DurlagsTower%","",[2677.2427],12))~ EXIT
  IF ~PartyHasItem("MISC44")~ THEN REPLY @32 DO ~TakePartyItemNum("MISC44",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%DurlagsTower%","",[2622.2289],12)) ActionOverride(Player2,LeaveAreaLUA("%DurlagsTower%","",[2688.2355],12)) ActionOverride(Player3,LeaveAreaLUA("%DurlagsTower%","",[2694.2302],12)) ActionOverride(Player4,LeaveAreaLUA("%DurlagsTower%","",[2625.2347],12)) ActionOverride(Player5,LeaveAreaLUA("%DurlagsTower%","",[2612.2407],12)) ActionOverride(Player6,LeaveAreaLUA("%DurlagsTower%","",[2677.2427],12))~ EXIT
  IF ~PartyHasItem("MISC43")~ THEN REPLY @33 DO ~TakePartyItemNum("MISC43",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%DurlagsTower%","",[2622.2289],12)) ActionOverride(Player2,LeaveAreaLUA("%DurlagsTower%","",[2688.2355],12)) ActionOverride(Player3,LeaveAreaLUA("%DurlagsTower%","",[2694.2302],12)) ActionOverride(Player4,LeaveAreaLUA("%DurlagsTower%","",[2625.2347],12)) ActionOverride(Player5,LeaveAreaLUA("%DurlagsTower%","",[2612.2407],12)) ActionOverride(Player6,LeaveAreaLUA("%DurlagsTower%","",[2677.2427],12))~ EXIT
  IF ~PartyHasItem("MISC42")~ THEN REPLY @34 DO ~TakePartyItemNum("MISC42",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%DurlagsTower%","",[2622.2289],12)) ActionOverride(Player2,LeaveAreaLUA("%DurlagsTower%","",[2688.2355],12)) ActionOverride(Player3,LeaveAreaLUA("%DurlagsTower%","",[2694.2302],12)) ActionOverride(Player4,LeaveAreaLUA("%DurlagsTower%","",[2625.2347],12)) ActionOverride(Player5,LeaveAreaLUA("%DurlagsTower%","",[2612.2407],12)) ActionOverride(Player6,LeaveAreaLUA("%DurlagsTower%","",[2677.2427],12))~ EXIT
  IF ~PartyHasItem("MISC41")~ THEN REPLY @35 DO ~TakePartyItemNum("MISC41",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%DurlagsTower%","",[2622.2289],12)) ActionOverride(Player2,LeaveAreaLUA("%DurlagsTower%","",[2688.2355],12)) ActionOverride(Player3,LeaveAreaLUA("%DurlagsTower%","",[2694.2302],12)) ActionOverride(Player4,LeaveAreaLUA("%DurlagsTower%","",[2625.2347],12)) ActionOverride(Player5,LeaveAreaLUA("%DurlagsTower%","",[2612.2407],12)) ActionOverride(Player6,LeaveAreaLUA("%DurlagsTower%","",[2677.2427],12))~ EXIT
  IF ~PartyHasItem("AMUL12")~ THEN REPLY @36 DO ~TakePartyItemNum("AMUL12",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%DurlagsTower%","",[2622.2289],12)) ActionOverride(Player2,LeaveAreaLUA("%DurlagsTower%","",[2688.2355],12)) ActionOverride(Player3,LeaveAreaLUA("%DurlagsTower%","",[2694.2302],12)) ActionOverride(Player4,LeaveAreaLUA("%DurlagsTower%","",[2625.2347],12)) ActionOverride(Player5,LeaveAreaLUA("%DurlagsTower%","",[2612.2407],12)) ActionOverride(Player6,LeaveAreaLUA("%DurlagsTower%","",[2677.2427],12))~ EXIT
  IF ~PartyHasItem("AMUL11")~ THEN REPLY @37 DO ~TakePartyItemNum("AMUL11",1) 
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%DurlagsTower%","",[2622.2289],12)) ActionOverride(Player2,LeaveAreaLUA("%DurlagsTower%","",[2688.2355],12)) ActionOverride(Player3,LeaveAreaLUA("%DurlagsTower%","",[2694.2302],12)) ActionOverride(Player4,LeaveAreaLUA("%DurlagsTower%","",[2625.2347],12)) ActionOverride(Player5,LeaveAreaLUA("%DurlagsTower%","",[2612.2407],12)) ActionOverride(Player6,LeaveAreaLUA("%DurlagsTower%","",[2677.2427],12))~ EXIT
  IF ~PartyHasItem("MISC18")~ THEN REPLY @44 DO ~TakePartyItemNum("MISC18",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%DurlagsTower%","",[2622.2289],12)) ActionOverride(Player2,LeaveAreaLUA("%DurlagsTower%","",[2688.2355],12)) ActionOverride(Player3,LeaveAreaLUA("%DurlagsTower%","",[2694.2302],12)) ActionOverride(Player4,LeaveAreaLUA("%DurlagsTower%","",[2625.2347],12)) ActionOverride(Player5,LeaveAreaLUA("%DurlagsTower%","",[2612.2407],12)) ActionOverride(Player6,LeaveAreaLUA("%DurlagsTower%","",[2677.2427],12))~ EXIT
  IF ~~ THEN REPLY @39 GOTO 2VS5
  IF ~~ THEN REPLY @40 DO ~ForceSpell(Myself,WIZARD_FIREBALL) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 2VS10 
  SAY @45
IF ~PartyGoldGT(4999)~ THEN REPLY @30 DO ~TakePartyGold(5000)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player2,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player3,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player4,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player5,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player6,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0))~ EXIT
  IF ~PartyHasItem("MISC45")~ THEN REPLY @31 DO ~TakePartyItemNum("MISC45",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player2,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player3,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player4,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player5,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player6,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0))~ EXIT
  IF ~PartyHasItem("MISC44")~ THEN REPLY @32 DO ~TakePartyItemNum("MISC44",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player2,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player3,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player4,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player5,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player6,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0))~ EXIT
  IF ~PartyHasItem("MISC43")~ THEN REPLY @33 DO ~TakePartyItemNum("MISC43",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player2,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player3,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player4,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player5,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player6,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0))~ EXIT
  IF ~PartyHasItem("MISC42")~ THEN REPLY @34 DO ~TakePartyItemNum("MISC42",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player2,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player3,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player4,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player5,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player6,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0))~ EXIT
  IF ~PartyHasItem("MISC41")~ THEN REPLY @35 DO ~TakePartyItemNum("MISC41",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player2,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player3,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player4,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player5,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player6,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0))~ EXIT
 IF ~PartyHasItem("MISC40")~ THEN REPLY @46 DO ~TakePartyItemNum("MISC40",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player2,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player3,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player4,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player5,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player6,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0))~ EXIT
  IF ~PartyHasItem("MISC39")~ THEN REPLY @47 DO ~TakePartyItemNum("MISC39",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player2,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player3,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player4,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player5,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player6,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0))~ EXIT
  IF ~PartyHasItem("MISC38")~ THEN REPLY @48 DO ~TakePartyItemNum("MISC38",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player2,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player3,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player4,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player5,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player6,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0))~ EXIT
  IF ~PartyHasItem("MISC37")~ THEN REPLY @49 DO ~TakePartyItemNum("MISC37",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player2,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player3,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player4,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player5,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player6,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0))~ EXIT
  IF ~PartyHasItem("MISC36")~ THEN REPLY @50 DO ~TakePartyItemNum("MISC36",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player2,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player3,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player4,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player5,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player6,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0))~ EXIT
  IF ~PartyHasItem("AMUL12")~ THEN REPLY @36 DO ~TakePartyItemNum("AMUL12",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player2,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player3,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player4,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player5,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player6,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0))~ EXIT
  IF ~PartyHasItem("AMUL11")~ THEN REPLY @37 DO ~TakePartyItemNum("AMUL11",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player2,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player3,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player4,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player5,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player6,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0))~ EXIT
  IF ~PartyHasItem("AMUL13")~ THEN REPLY @51 DO ~TakePartyItemNum("AMUL13",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player2,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player3,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player4,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player5,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player6,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0))~ EXIT
  IF ~PartyHasItem("RING18")~ THEN REPLY @52 DO ~TakePartyItemNum("RING18",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player2,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player3,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player4,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player5,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player6,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0))~ EXIT
  IF ~PartyHasItem("RING19")~ THEN REPLY @53 DO ~TakePartyItemNum("RING19",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player2,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player3,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player4,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player5,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player6,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0))~ EXIT
  IF ~PartyHasItem("MISC19")~ THEN REPLY @54 DO ~TakePartyItemNum("MISC19",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player2,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player3,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player4,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player5,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0)) ActionOverride(Player6,LeaveAreaLUA("%NBaldursGate%","",[1925.2905],0))~ EXIT
  IF ~~ THEN REPLY @39 GOTO 2VS5
  IF ~~ THEN REPLY @40 DO ~ForceSpell(Myself,WIZARD_FIREBALL) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 2VS11 
  SAY @55
  IF ~PartyGoldGT(4999)~ THEN REPLY @30 DO ~TakePartyGold(5000)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4)ActionOverride(Player1,LeaveAreaLUA("%CloakwoodMines%","",[3099.718],12)) ActionOverride(Player2,LeaveAreaLUA("%CloakwoodMines%","",[3088.686],12)) ActionOverride(Player3,LeaveAreaLUA("%CloakwoodMines%","",[3087.649],12)) ActionOverride(Player4,LeaveAreaLUA("%CloakwoodMines%","",[3090.588],12)) ActionOverride(Player5,LeaveAreaLUA("%CloakwoodMines%","",[2998.680],12)) ActionOverride(Player6,LeaveAreaLUA("%CloakwoodMines%","",[2936.699],12))~ EXIT
  IF ~PartyHasItem("MISC45")~ THEN REPLY @31 DO ~TakePartyItemNum("MISC45",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%CloakwoodMines%","",[3099.718],12)) ActionOverride(Player2,LeaveAreaLUA("%CloakwoodMines%","",[3088.686],12)) ActionOverride(Player3,LeaveAreaLUA("%CloakwoodMines%","",[3087.649],12)) ActionOverride(Player4,LeaveAreaLUA("%CloakwoodMines%","",[3090.588],12)) ActionOverride(Player5,LeaveAreaLUA("%CloakwoodMines%","",[2998.680],12)) ActionOverride(Player6,LeaveAreaLUA("%CloakwoodMines%","",[2936.699],12))~ EXIT
  IF ~PartyHasItem("MISC44")~ THEN REPLY @32 DO ~TakePartyItemNum("MISC44",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%CloakwoodMines%","",[3099.718],12)) ActionOverride(Player2,LeaveAreaLUA("%CloakwoodMines%","",[3088.686],12)) ActionOverride(Player3,LeaveAreaLUA("%CloakwoodMines%","",[3087.649],12)) ActionOverride(Player4,LeaveAreaLUA("%CloakwoodMines%","",[3090.588],12)) ActionOverride(Player5,LeaveAreaLUA("%CloakwoodMines%","",[2998.680],12)) ActionOverride(Player6,LeaveAreaLUA("%CloakwoodMines%","",[2936.699],12))~ EXIT
  IF ~PartyHasItem("MISC43")~ THEN REPLY @33 DO ~TakePartyItemNum("MISC43",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%CloakwoodMines%","",[3099.718],12)) ActionOverride(Player2,LeaveAreaLUA("%CloakwoodMines%","",[3088.686],12)) ActionOverride(Player3,LeaveAreaLUA("%CloakwoodMines%","",[3087.649],12)) ActionOverride(Player4,LeaveAreaLUA("%CloakwoodMines%","",[3090.588],12)) ActionOverride(Player5,LeaveAreaLUA("%CloakwoodMines%","",[2998.680],12)) ActionOverride(Player6,LeaveAreaLUA("%CloakwoodMines%","",[2936.699],12))~ EXIT
  IF ~PartyHasItem("MISC42")~ THEN REPLY @34 DO ~TakePartyItemNum("MISC42",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%CloakwoodMines%","",[3099.718],12)) ActionOverride(Player2,LeaveAreaLUA("%CloakwoodMines%","",[3088.686],12)) ActionOverride(Player3,LeaveAreaLUA("%CloakwoodMines%","",[3087.649],12)) ActionOverride(Player4,LeaveAreaLUA("%CloakwoodMines%","",[3090.588],12)) ActionOverride(Player5,LeaveAreaLUA("%CloakwoodMines%","",[2998.680],12)) ActionOverride(Player6,LeaveAreaLUA("%CloakwoodMines%","",[2936.699],12))~ EXIT
  IF ~PartyHasItem("MISC41")~ THEN REPLY @35 DO ~TakePartyItemNum("MISC41",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%CloakwoodMines%","",[3099.718],12)) ActionOverride(Player2,LeaveAreaLUA("%CloakwoodMines%","",[3088.686],12)) ActionOverride(Player3,LeaveAreaLUA("%CloakwoodMines%","",[3087.649],12)) ActionOverride(Player4,LeaveAreaLUA("%CloakwoodMines%","",[3090.588],12)) ActionOverride(Player5,LeaveAreaLUA("%CloakwoodMines%","",[2998.680],12)) ActionOverride(Player6,LeaveAreaLUA("%CloakwoodMines%","",[2936.699],12))~ EXIT
  IF ~PartyHasItem("MISC40")~ THEN REPLY @46 DO ~TakePartyItemNum("MISC40",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4)ActionOverride(Player1,LeaveAreaLUA("%CloakwoodMines%","",[3099.718],12)) ActionOverride(Player2,LeaveAreaLUA("%CloakwoodMines%","",[3088.686],12)) ActionOverride(Player3,LeaveAreaLUA("%CloakwoodMines%","",[3087.649],12)) ActionOverride(Player4,LeaveAreaLUA("%CloakwoodMines%","",[3090.588],12)) ActionOverride(Player5,LeaveAreaLUA("%CloakwoodMines%","",[2998.680],12)) ActionOverride(Player6,LeaveAreaLUA("%CloakwoodMines%","",[2936.699],12))~ EXIT
  IF ~PartyHasItem("MISC39")~ THEN REPLY @47 DO ~TakePartyItemNum("MISC39",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%CloakwoodMines%","",[3099.718],12)) ActionOverride(Player2,LeaveAreaLUA("%CloakwoodMines%","",[3088.686],12)) ActionOverride(Player3,LeaveAreaLUA("%CloakwoodMines%","",[3087.649],12)) ActionOverride(Player4,LeaveAreaLUA("%CloakwoodMines%","",[3090.588],12)) ActionOverride(Player5,LeaveAreaLUA("%CloakwoodMines%","",[2998.680],12)) ActionOverride(Player6,LeaveAreaLUA("%CloakwoodMines%","",[2936.699],12))~ EXIT
  IF ~PartyHasItem("MISC38")~ THEN REPLY @48 DO ~TakePartyItemNum("MISC38",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%CloakwoodMines%","",[3099.718],12)) ActionOverride(Player2,LeaveAreaLUA("%CloakwoodMines%","",[3088.686],12)) ActionOverride(Player3,LeaveAreaLUA("%CloakwoodMines%","",[3087.649],12)) ActionOverride(Player4,LeaveAreaLUA("%CloakwoodMines%","",[3090.588],12)) ActionOverride(Player5,LeaveAreaLUA("%CloakwoodMines%","",[2998.680],12)) ActionOverride(Player6,LeaveAreaLUA("%CloakwoodMines%","",[2936.699],12))~ EXIT
  IF ~PartyHasItem("MISC37")~ THEN REPLY @49 DO ~TakePartyItemNum("MISC37",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%CloakwoodMines%","",[3099.718],12)) ActionOverride(Player2,LeaveAreaLUA("%CloakwoodMines%","",[3088.686],12)) ActionOverride(Player3,LeaveAreaLUA("%CloakwoodMines%","",[3087.649],12)) ActionOverride(Player4,LeaveAreaLUA("%CloakwoodMines%","",[3090.588],12)) ActionOverride(Player5,LeaveAreaLUA("%CloakwoodMines%","",[2998.680],12)) ActionOverride(Player6,LeaveAreaLUA("%CloakwoodMines%","",[2936.699],12))~ EXIT
  IF ~PartyHasItem("MISC36")~ THEN REPLY @50 DO ~TakePartyItemNum("MISC36",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%CloakwoodMines%","",[3099.718],12)) ActionOverride(Player2,LeaveAreaLUA("%CloakwoodMines%","",[3088.686],12)) ActionOverride(Player3,LeaveAreaLUA("%CloakwoodMines%","",[3087.649],12)) ActionOverride(Player4,LeaveAreaLUA("%CloakwoodMines%","",[3090.588],12)) ActionOverride(Player5,LeaveAreaLUA("%CloakwoodMines%","",[2998.680],12)) ActionOverride(Player6,LeaveAreaLUA("%CloakwoodMines%","",[2936.699],12))~ EXIT
  IF ~PartyHasItem("AMUL12")~ THEN REPLY @36 DO ~TakePartyItemNum("AMUL12",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%CloakwoodMines%","",[3099.718],12)) ActionOverride(Player2,LeaveAreaLUA("%CloakwoodMines%","",[3088.686],12)) ActionOverride(Player3,LeaveAreaLUA("%CloakwoodMines%","",[3087.649],12)) ActionOverride(Player4,LeaveAreaLUA("%CloakwoodMines%","",[3090.588],12)) ActionOverride(Player5,LeaveAreaLUA("%CloakwoodMines%","",[2998.680],12)) ActionOverride(Player6,LeaveAreaLUA("%CloakwoodMines%","",[2936.699],12))~ EXIT
  IF ~PartyHasItem("AMUL11")~ THEN REPLY @37 DO ~TakePartyItemNum("AMUL11",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%CloakwoodMines%","",[3099.718],12)) ActionOverride(Player2,LeaveAreaLUA("%CloakwoodMines%","",[3088.686],12)) ActionOverride(Player3,LeaveAreaLUA("%CloakwoodMines%","",[3087.649],12)) ActionOverride(Player4,LeaveAreaLUA("%CloakwoodMines%","",[3090.588],12)) ActionOverride(Player5,LeaveAreaLUA("%CloakwoodMines%","",[2998.680],12)) ActionOverride(Player6,LeaveAreaLUA("%CloakwoodMines%","",[2936.699],12))~ EXIT
  IF ~PartyHasItem("AMUL13")~ THEN REPLY @51 DO ~TakePartyItemNum("AMUL13",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%CloakwoodMines%","",[3099.718],12)) ActionOverride(Player2,LeaveAreaLUA("%CloakwoodMines%","",[3088.686],12)) ActionOverride(Player3,LeaveAreaLUA("%CloakwoodMines%","",[3087.649],12)) ActionOverride(Player4,LeaveAreaLUA("%CloakwoodMines%","",[3090.588],12)) ActionOverride(Player5,LeaveAreaLUA("%CloakwoodMines%","",[2998.680],12)) ActionOverride(Player6,LeaveAreaLUA("%CloakwoodMines%","",[2936.699],12))~ EXIT
  IF ~PartyHasItem("RING18")~ THEN REPLY @52 DO ~TakePartyItemNum("RING18",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%CloakwoodMines%","",[3099.718],12)) ActionOverride(Player2,LeaveAreaLUA("%CloakwoodMines%","",[3088.686],12)) ActionOverride(Player3,LeaveAreaLUA("%CloakwoodMines%","",[3087.649],12)) ActionOverride(Player4,LeaveAreaLUA("%CloakwoodMines%","",[3090.588],12)) ActionOverride(Player5,LeaveAreaLUA("%CloakwoodMines%","",[2998.680],12)) ActionOverride(Player6,LeaveAreaLUA("%CloakwoodMines%","",[2936.699],12))~ EXIT
  IF ~PartyHasItem("RING19")~ THEN REPLY @53 DO ~TakePartyItemNum("RING19",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%CloakwoodMines%","",[3099.718],12)) ActionOverride(Player2,LeaveAreaLUA("%CloakwoodMines%","",[3088.686],12)) ActionOverride(Player3,LeaveAreaLUA("%CloakwoodMines%","",[3087.649],12)) ActionOverride(Player4,LeaveAreaLUA("%CloakwoodMines%","",[3090.588],12)) ActionOverride(Player5,LeaveAreaLUA("%CloakwoodMines%","",[2998.680],12)) ActionOverride(Player6,LeaveAreaLUA("%CloakwoodMines%","",[2936.699],12))~ EXIT
  IF ~PartyHasItem("MISC20")~ THEN REPLY @56 DO ~TakePartyItemNum("MISC20",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%CloakwoodMines%","",[3099.718],12)) ActionOverride(Player2,LeaveAreaLUA("%CloakwoodMines%","",[3088.686],12)) ActionOverride(Player3,LeaveAreaLUA("%CloakwoodMines%","",[3087.649],12)) ActionOverride(Player4,LeaveAreaLUA("%CloakwoodMines%","",[3090.588],12)) ActionOverride(Player5,LeaveAreaLUA("%CloakwoodMines%","",[2998.680],12)) ActionOverride(Player6,LeaveAreaLUA("%CloakwoodMines%","",[2936.699],12))~ EXIT
  IF ~~ THEN REPLY @39 GOTO 2VS5
  IF ~~ THEN REPLY @40 DO ~ForceSpell(Myself,WIZARD_FIREBALL) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 2VS12 
  SAY @57
  IF ~PartyGoldGT(4999)~ THEN REPLY @30 DO ~TakePartyGold(5000)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player2,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player3,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player4,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player5,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player6,LeaveAreaLUA("%BanditCamp%","",[3590.900],0))~ EXIT
  IF ~PartyHasItem("MISC45")~ THEN REPLY @31 DO ~TakePartyItemNum("MISC45",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player2,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player3,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player4,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player5,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player6,LeaveAreaLUA("%BanditCamp%","",[3590.900],0))~ EXIT
  IF ~PartyHasItem("MISC44")~ THEN REPLY @32 DO ~TakePartyItemNum("MISC44",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player2,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player3,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player4,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player5,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player6,LeaveAreaLUA("%BanditCamp%","",[3590.900],0))~ EXIT
  IF ~PartyHasItem("MISC43")~ THEN REPLY @33 DO ~TakePartyItemNum("MISC43",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player2,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player3,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player4,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player5,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player6,LeaveAreaLUA("%BanditCamp%","",[3590.900],0))~ EXIT
  IF ~PartyHasItem("MISC42")~ THEN REPLY @34 DO ~TakePartyItemNum("MISC42",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player2,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player3,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player4,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player5,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player6,LeaveAreaLUA("%BanditCamp%","",[3590.900],0))~ EXIT
  IF ~PartyHasItem("MISC41")~ THEN REPLY @35 DO ~TakePartyItemNum("MISC41",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player2,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player3,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player4,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player5,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player6,LeaveAreaLUA("%BanditCamp%","",[3590.900],0))~ EXIT
  IF ~PartyHasItem("MISC40")~ THEN REPLY @46 DO ~TakePartyItemNum("MISC40",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player2,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player3,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player4,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player5,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player6,LeaveAreaLUA("%BanditCamp%","",[3590.900],0))~ EXIT
  IF ~PartyHasItem("MISC39")~ THEN REPLY @47 DO ~TakePartyItemNum("MISC39",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player2,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player3,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player4,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player5,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player6,LeaveAreaLUA("%BanditCamp%","",[3590.900],0))~ EXIT
  IF ~PartyHasItem("MISC38")~ THEN REPLY @48 DO ~TakePartyItemNum("MISC38",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player2,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player3,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player4,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player5,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player6,LeaveAreaLUA("%BanditCamp%","",[3590.900],0))~ EXIT
  IF ~PartyHasItem("MISC37")~ THEN REPLY @49 DO ~TakePartyItemNum("MISC37",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player2,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player3,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player4,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player5,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player6,LeaveAreaLUA("%BanditCamp%","",[3590.900],0))~ EXIT
  IF ~PartyHasItem("MISC36")~ THEN REPLY @50 DO ~TakePartyItemNum("MISC36",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player2,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player3,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player4,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player5,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player6,LeaveAreaLUA("%BanditCamp%","",[3590.900],0))~ EXIT
  IF ~PartyHasItem("AMUL12")~ THEN REPLY @36 DO ~TakePartyItemNum("AMUL12",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player2,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player3,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player4,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player5,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player6,LeaveAreaLUA("%BanditCamp%","",[3590.900],0))~ EXIT
  IF ~PartyHasItem("AMUL11")~ THEN REPLY @37 DO ~TakePartyItemNum("AMUL11",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player2,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player3,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player4,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player5,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player6,LeaveAreaLUA("%BanditCamp%","",[3590.900],0))~ EXIT
  IF ~PartyHasItem("AMUL13")~ THEN REPLY @51 DO ~TakePartyItemNum("AMUL13",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player2,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player3,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player4,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player5,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player6,LeaveAreaLUA("%BanditCamp%","",[3590.900],0))~ EXIT
  IF ~PartyHasItem("RING18")~ THEN REPLY @52 DO ~TakePartyItemNum("RING18",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player2,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player3,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player4,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player5,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player6,LeaveAreaLUA("%BanditCamp%","",[3590.900],0))~ EXIT
  IF ~PartyHasItem("RING19")~ THEN REPLY @53 DO ~TakePartyItemNum("RING19",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player2,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player3,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player4,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player5,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player6,LeaveAreaLUA("%BanditCamp%","",[3590.900],0))~ EXIT
  IF ~PartyHasItem("MISC21")~ THEN REPLY @58 DO ~TakePartyItemNum("MISC21",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player2,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player3,LeaveAreaLUA("%BanditCamp%","",[3600.900],0)) ActionOverride(Player4,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player5,LeaveAreaLUA("%BanditCamp%","",[3590.900],0)) ActionOverride(Player6,LeaveAreaLUA("%BanditCamp%","",[3590.900],0))~ EXIT
  IF ~~ THEN REPLY @39 GOTO 2VS5
  IF ~~ THEN REPLY @40 DO ~ForceSpell(Myself,WIZARD_FIREBALL) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 2VS13
  SAY @61
  IF ~PartyGoldGT(4999)~ THEN REPLY @30 DO ~TakePartyGold(5000)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player2,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player3,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player4,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player5,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player6,LeaveAreaLUA("%Beregost%","",[2550.2290],12))~ EXIT
  IF ~PartyHasItem("MISC45")~ THEN REPLY @31 DO ~TakePartyItemNum("MISC45",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player2,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player3,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player4,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player5,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player6,LeaveAreaLUA("%Beregost%","",[2550.2290],12))~ EXIT
  IF ~PartyHasItem("MISC44")~ THEN REPLY @32 DO ~TakePartyItemNum("MISC44",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player2,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player3,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player4,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player5,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player6,LeaveAreaLUA("%Beregost%","",[2550.2290],12))~ EXIT
  IF ~PartyHasItem("MISC43")~ THEN REPLY @33 DO ~TakePartyItemNum("MISC43",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player2,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player3,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player4,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player5,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player6,LeaveAreaLUA("%Beregost%","",[2550.2290],12))~ EXIT
  IF ~PartyHasItem("MISC42")~ THEN REPLY @34 DO ~TakePartyItemNum("MISC42",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player2,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player3,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player4,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player5,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player6,LeaveAreaLUA("%Beregost%","",[2550.2290],12))~ EXIT
  IF ~PartyHasItem("MISC41")~ THEN REPLY @35 DO ~TakePartyItemNum("MISC41",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player2,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player3,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player4,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player5,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player6,LeaveAreaLUA("%Beregost%","",[2550.2290],12))~ EXIT
  IF ~PartyHasItem("MISC40")~ THEN REPLY @46 DO ~TakePartyItemNum("MISC40",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player2,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player3,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player4,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player5,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player6,LeaveAreaLUA("%Beregost%","",[2550.2290],12))~ EXIT
  IF ~PartyHasItem("MISC39")~ THEN REPLY @47 DO ~TakePartyItemNum("MISC39",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player2,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player3,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player4,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player5,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player6,LeaveAreaLUA("%Beregost%","",[2550.2290],12))~ EXIT
  IF ~PartyHasItem("MISC38")~ THEN REPLY @48 DO ~TakePartyItemNum("MISC38",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player2,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player3,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player4,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player5,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player6,LeaveAreaLUA("%Beregost%","",[2550.2290],12))~ EXIT
  IF ~PartyHasItem("MISC37")~ THEN REPLY @49 DO ~TakePartyItemNum("MISC37",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player2,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player3,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player4,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player5,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player6,LeaveAreaLUA("%Beregost%","",[2550.2290],12))~ EXIT
  IF ~PartyHasItem("MISC36")~ THEN REPLY @50 DO ~TakePartyItemNum("MISC36",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player2,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player3,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player4,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player5,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player6,LeaveAreaLUA("%Beregost%","",[2550.2290],12))~ EXIT
  IF ~PartyHasItem("AMUL12")~ THEN REPLY @36 DO ~TakePartyItemNum("AMUL12",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player2,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player3,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player4,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player5,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player6,LeaveAreaLUA("%Beregost%","",[2550.2290],12))~ EXIT
  IF ~PartyHasItem("AMUL11")~ THEN REPLY @37 DO ~TakePartyItemNum("AMUL11",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player2,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player3,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player4,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player5,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player6,LeaveAreaLUA("%Beregost%","",[2550.2290],12))~ EXIT
  IF ~PartyHasItem("AMUL13")~ THEN REPLY @51 DO ~TakePartyItemNum("AMUL13",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player2,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player3,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player4,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player5,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player6,LeaveAreaLUA("%Beregost%","",[2550.2290],12))~ EXIT
  IF ~PartyHasItem("RING18")~ THEN REPLY @52 DO ~TakePartyItemNum("RING18",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player2,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player3,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player4,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player5,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player6,LeaveAreaLUA("%Beregost%","",[2550.2290],12))~ EXIT
  IF ~PartyHasItem("RING19")~ THEN REPLY @53 DO ~TakePartyItemNum("RING19",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player2,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player3,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player4,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player5,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player6,LeaveAreaLUA("%Beregost%","",[2550.2290],12))~ EXIT
  IF ~PartyHasItem("MISC23")~ THEN REPLY @62 DO ~TakePartyItemNum("MISC23",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player2,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player3,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player4,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player5,LeaveAreaLUA("%Beregost%","",[2550.2290],12)) ActionOverride(Player6,LeaveAreaLUA("%Beregost%","",[2550.2290],12))~ EXIT
  IF ~~ THEN REPLY @39 GOTO 2VS5
  IF ~~ THEN REPLY @40 DO ~ForceSpell(Myself,WIZARD_FIREBALL) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 2VS14
  SAY @63
  IF ~PartyGoldGT(4999)~ THEN REPLY @30 DO ~TakePartyGold(5000)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NashkelMines%","",[2860.100],0)) ActionOverride(Player2,LeaveAreaLUA("%NashkelMines%","",[2865.100],0)) ActionOverride(Player3,LeaveAreaLUA("%NashkelMines%","",[2860.105],0)) ActionOverride(Player4,LeaveAreaLUA("%NashkelMines%","",[2865.105],0)) ActionOverride(Player5,LeaveAreaLUA("%NashkelMines%","",[2860.110],0)) ActionOverride(Player6,LeaveAreaLUA("%NashkelMines%","",[2865.110],0))~ EXIT
  IF ~PartyHasItem("MISC45")~ THEN REPLY @31 DO ~TakePartyItemNum("MISC45",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NashkelMines%","",[2860.100],0)) ActionOverride(Player2,LeaveAreaLUA("%NashkelMines%","",[2865.100],0)) ActionOverride(Player3,LeaveAreaLUA("%NashkelMines%","",[2860.105],0)) ActionOverride(Player4,LeaveAreaLUA("%NashkelMines%","",[2865.105],0)) ActionOverride(Player5,LeaveAreaLUA("%NashkelMines%","",[2860.110],0)) ActionOverride(Player6,LeaveAreaLUA("%NashkelMines%","",[2865.110],0))~ EXIT
  IF ~PartyHasItem("MISC44")~ THEN REPLY @32 DO ~TakePartyItemNum("MISC44",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NashkelMines%","",[2860.100],0)) ActionOverride(Player2,LeaveAreaLUA("%NashkelMines%","",[2865.100],0)) ActionOverride(Player3,LeaveAreaLUA("%NashkelMines%","",[2860.105],0)) ActionOverride(Player4,LeaveAreaLUA("%NashkelMines%","",[2865.105],0)) ActionOverride(Player5,LeaveAreaLUA("%NashkelMines%","",[2860.110],0)) ActionOverride(Player6,LeaveAreaLUA("%NashkelMines%","",[2865.110],0))~ EXIT
  IF ~PartyHasItem("MISC43")~ THEN REPLY @33 DO ~TakePartyItemNum("MISC43",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NashkelMines%","",[2860.100],0)) ActionOverride(Player2,LeaveAreaLUA("%NashkelMines%","",[2865.100],0)) ActionOverride(Player3,LeaveAreaLUA("%NashkelMines%","",[2860.105],0)) ActionOverride(Player4,LeaveAreaLUA("%NashkelMines%","",[2865.105],0)) ActionOverride(Player5,LeaveAreaLUA("%NashkelMines%","",[2860.110],0)) ActionOverride(Player6,LeaveAreaLUA("%NashkelMines%","",[2865.110],0))~ EXIT
  IF ~PartyHasItem("MISC42")~ THEN REPLY @34 DO ~TakePartyItemNum("MISC42",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NashkelMines%","",[2860.100],0)) ActionOverride(Player2,LeaveAreaLUA("%NashkelMines%","",[2865.100],0)) ActionOverride(Player3,LeaveAreaLUA("%NashkelMines%","",[2860.105],0)) ActionOverride(Player4,LeaveAreaLUA("%NashkelMines%","",[2865.105],0)) ActionOverride(Player5,LeaveAreaLUA("%NashkelMines%","",[2860.110],0)) ActionOverride(Player6,LeaveAreaLUA("%NashkelMines%","",[2865.110],0))~ EXIT
  IF ~PartyHasItem("MISC41")~ THEN REPLY @35 DO ~TakePartyItemNum("MISC41",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NashkelMines%","",[2860.100],0)) ActionOverride(Player2,LeaveAreaLUA("%NashkelMines%","",[2865.100],0)) ActionOverride(Player3,LeaveAreaLUA("%NashkelMines%","",[2860.105],0)) ActionOverride(Player4,LeaveAreaLUA("%NashkelMines%","",[2865.105],0)) ActionOverride(Player5,LeaveAreaLUA("%NashkelMines%","",[2860.110],0)) ActionOverride(Player6,LeaveAreaLUA("%NashkelMines%","",[2865.110],0))~ EXIT
  IF ~PartyHasItem("MISC40")~ THEN REPLY @46 DO ~TakePartyItemNum("MISC40",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NashkelMines%","",[2860.100],0)) ActionOverride(Player2,LeaveAreaLUA("%NashkelMines%","",[2865.100],0)) ActionOverride(Player3,LeaveAreaLUA("%NashkelMines%","",[2860.105],0)) ActionOverride(Player4,LeaveAreaLUA("%NashkelMines%","",[2865.105],0)) ActionOverride(Player5,LeaveAreaLUA("%NashkelMines%","",[2860.110],0)) ActionOverride(Player6,LeaveAreaLUA("%NashkelMines%","",[2865.110],0))~ EXIT
  IF ~PartyHasItem("MISC39")~ THEN REPLY @47 DO ~TakePartyItemNum("MISC39",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NashkelMines%","",[2860.100],0)) ActionOverride(Player2,LeaveAreaLUA("%NashkelMines%","",[2865.100],0)) ActionOverride(Player3,LeaveAreaLUA("%NashkelMines%","",[2860.105],0)) ActionOverride(Player4,LeaveAreaLUA("%NashkelMines%","",[2865.105],0)) ActionOverride(Player5,LeaveAreaLUA("%NashkelMines%","",[2860.110],0)) ActionOverride(Player6,LeaveAreaLUA("%NashkelMines%","",[2865.110],0))~ EXIT
  IF ~PartyHasItem("MISC38")~ THEN REPLY @48 DO ~TakePartyItemNum("MISC38",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NashkelMines%","",[2860.100],0)) ActionOverride(Player2,LeaveAreaLUA("%NashkelMines%","",[2865.100],0)) ActionOverride(Player3,LeaveAreaLUA("%NashkelMines%","",[2860.105],0)) ActionOverride(Player4,LeaveAreaLUA("%NashkelMines%","",[2865.105],0)) ActionOverride(Player5,LeaveAreaLUA("%NashkelMines%","",[2860.110],0)) ActionOverride(Player6,LeaveAreaLUA("%NashkelMines%","",[2865.110],0))~ EXIT
  IF ~PartyHasItem("MISC37")~ THEN REPLY @49 DO ~TakePartyItemNum("MISC37",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NashkelMines%","",[2860.100],0)) ActionOverride(Player2,LeaveAreaLUA("%NashkelMines%","",[2865.100],0)) ActionOverride(Player3,LeaveAreaLUA("%NashkelMines%","",[2860.105],0)) ActionOverride(Player4,LeaveAreaLUA("%NashkelMines%","",[2865.105],0)) ActionOverride(Player5,LeaveAreaLUA("%NashkelMines%","",[2860.110],0)) ActionOverride(Player6,LeaveAreaLUA("%NashkelMines%","",[2865.110],0))~ EXIT
  IF ~PartyHasItem("MISC36")~ THEN REPLY @50 DO ~TakePartyItemNum("MISC36",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NashkelMines%","",[2860.100],0)) ActionOverride(Player2,LeaveAreaLUA("%NashkelMines%","",[2865.100],0)) ActionOverride(Player3,LeaveAreaLUA("%NashkelMines%","",[2860.105],0)) ActionOverride(Player4,LeaveAreaLUA("%NashkelMines%","",[2865.105],0)) ActionOverride(Player5,LeaveAreaLUA("%NashkelMines%","",[2860.110],0)) ActionOverride(Player6,LeaveAreaLUA("%NashkelMines%","",[2865.110],0))~ EXIT
  IF ~PartyHasItem("AMUL12")~ THEN REPLY @36 DO ~TakePartyItemNum("AMUL12",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NashkelMines%","",[2860.100],0)) ActionOverride(Player2,LeaveAreaLUA("%NashkelMines%","",[2865.100],0)) ActionOverride(Player3,LeaveAreaLUA("%NashkelMines%","",[2860.105],0)) ActionOverride(Player4,LeaveAreaLUA("%NashkelMines%","",[2865.105],0)) ActionOverride(Player5,LeaveAreaLUA("%NashkelMines%","",[2860.110],0)) ActionOverride(Player6,LeaveAreaLUA("%NashkelMines%","",[2865.110],0))~ EXIT
  IF ~PartyHasItem("AMUL11")~THEN REPLY @37 DO ~TakePartyItemNum("AMUL11",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NashkelMines%","",[2860.100],0)) ActionOverride(Player2,LeaveAreaLUA("%NashkelMines%","",[2865.100],0)) ActionOverride(Player3,LeaveAreaLUA("%NashkelMines%","",[2860.105],0)) ActionOverride(Player4,LeaveAreaLUA("%NashkelMines%","",[2865.105],0)) ActionOverride(Player5,LeaveAreaLUA("%NashkelMines%","",[2860.110],0)) ActionOverride(Player6,LeaveAreaLUA("%NashkelMines%","",[2865.110],0))~ EXIT
  IF ~PartyHasItem("AMUL13")~ THEN REPLY @51 DO ~TakePartyItemNum("AMUL13",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NashkelMines%","",[2860.100],0)) ActionOverride(Player2,LeaveAreaLUA("%NashkelMines%","",[2865.100],0)) ActionOverride(Player3,LeaveAreaLUA("%NashkelMines%","",[2860.105],0)) ActionOverride(Player4,LeaveAreaLUA("%NashkelMines%","",[2865.105],0)) ActionOverride(Player5,LeaveAreaLUA("%NashkelMines%","",[2860.110],0)) ActionOverride(Player6,LeaveAreaLUA("%NashkelMines%","",[2865.110],0))~ EXIT
  IF ~PartyHasItem("RING18")~ THEN REPLY @52 DO ~TakePartyItemNum("RING18",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NashkelMines%","",[2860.100],0)) ActionOverride(Player2,LeaveAreaLUA("%NashkelMines%","",[2865.100],0)) ActionOverride(Player3,LeaveAreaLUA("%NashkelMines%","",[2860.105],0)) ActionOverride(Player4,LeaveAreaLUA("%NashkelMines%","",[2865.105],0)) ActionOverride(Player5,LeaveAreaLUA("%NashkelMines%","",[2860.110],0)) ActionOverride(Player6,LeaveAreaLUA("%NashkelMines%","",[2865.110],0))~ EXIT
  IF ~PartyHasItem("RING19")~ THEN REPLY @53 DO ~TakePartyItemNum("RING19",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NashkelMines%","",[2860.100],0)) ActionOverride(Player2,LeaveAreaLUA("%NashkelMines%","",[2865.100],0)) ActionOverride(Player3,LeaveAreaLUA("%NashkelMines%","",[2860.105],0)) ActionOverride(Player4,LeaveAreaLUA("%NashkelMines%","",[2865.105],0)) ActionOverride(Player5,LeaveAreaLUA("%NashkelMines%","",[2860.110],0)) ActionOverride(Player6,LeaveAreaLUA("%NashkelMines%","",[2865.110],0))~ EXIT
  IF ~PartyHasItem("MISC24")~ THEN REPLY @64 DO ~TakePartyItemNum("MISC24",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("%NashkelMines%","",[2860.100],0)) ActionOverride(Player2,LeaveAreaLUA("%NashkelMines%","",[2865.100],0)) ActionOverride(Player3,LeaveAreaLUA("%NashkelMines%","",[2860.105],0)) ActionOverride(Player4,LeaveAreaLUA("%NashkelMines%","",[2865.105],0)) ActionOverride(Player5,LeaveAreaLUA("%NashkelMines%","",[2860.110],0)) ActionOverride(Player6,LeaveAreaLUA("%NashkelMines%","",[2865.110],0))~ EXIT
  IF ~~ THEN REPLY @39 GOTO 2VS5
  IF ~~ THEN REPLY @40 DO ~ForceSpell(Myself,WIZARD_FIREBALL) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 2VS16 
  SAY @65
  IF ~PartyGoldGT(4999)~ THEN REPLY @30 DO ~TakePartyGold(5000)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("MISC45")~ THEN REPLY @31 DO ~TakePartyItemNum("MISC45",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("MISC44")~ THEN REPLY @32 DO ~TakePartyItemNum("MISC44",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("MISC43")~ THEN REPLY @33 DO ~TakePartyItemNum("MISC43",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("MISC42")~ THEN REPLY @34 DO ~TakePartyItemNum("MISC42",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("MISC41")~ THEN REPLY @35 DO ~TakePartyItemNum("MISC41",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("MISC40")~ THEN REPLY @46 DO ~TakePartyItemNum("MISC40",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("MISC39")~ THEN REPLY @47 DO ~TakePartyItemNum("MISC39",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("MISC38")~ THEN REPLY @48 DO ~TakePartyItemNum("MISC38",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("MISC37")~ THEN REPLY @49 DO ~TakePartyItemNum("MISC37",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("MISC36")~ THEN REPLY @50 DO ~TakePartyItemNum("MISC36",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("AMUL12")~ THEN REPLY @36 DO ~TakePartyItemNum("AMUL12",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("AMUL11")~ THEN REPLY @37 DO ~TakePartyItemNum("AMUL11",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("AMUL13")~ THEN REPLY @51 DO ~TakePartyItemNum("AMUL13",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("RING18")~ THEN REPLY @52 DO ~TakePartyItemNum("RING18",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("RING19")~ THEN REPLY @53 DO ~TakePartyItemNum("RING19",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("MISC25")~ THEN REPLY @66 DO ~TakePartyItemNum("MISC25",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("MISC26")~ THEN REPLY @67 DO ~TakePartyItemNum("MISC26",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("MISC27")~ THEN REPLY @68 DO ~TakePartyItemNum("MISC27",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("MISC28")~ THEN REPLY @69 DO ~TakePartyItemNum("MISC28",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("MISC29")~ THEN REPLY @70 DO ~TakePartyItemNum("MISC29",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("MISC30")~ THEN REPLY @71 DO ~TakePartyItemNum("MISC30",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("MISC31")~ THEN REPLY @72 DO ~TakePartyItemNum("MISC31",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("MISC32")~ THEN REPLY @73 DO ~TakePartyItemNum("MISC32",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("MISC33")~ THEN REPLY @74 DO ~TakePartyItemNum("MISC33",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("MISC34")~ THEN REPLY @75 DO ~TakePartyItemNum("MISC34",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~PartyHasItem("MISC35")~ THEN REPLY @76 DO ~TakePartyItemNum("MISC35",1)
ForceSpell(Myself,WIZARD_FIREBALL) Wait(4) ActionOverride(Player1,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player2,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player3,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player4,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player5,LeaveAreaLUA("VT0001","",[-1.-1],0)) ActionOverride(Player6,LeaveAreaLUA("VT0001","",[-1.-1],0))~ EXIT
  IF ~~ THEN REPLY @39 GOTO 2VS5
  IF ~~ THEN REPLY @40 DO ~ForceSpell(Myself,WIZARD_FIREBALL) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END