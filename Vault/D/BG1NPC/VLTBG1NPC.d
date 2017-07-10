
ADD_TRANS_ACTION DOOMSAY BEGIN 1 2 3 END BEGIN 1 END ~CreateCreature("DOOMGU",[2660.1575],0) CreateCreature("DOOMGU",[2660.1575],0)~ 

ADD_TRANS_TRIGGER LIIA 8 ~GlobalLT("LiiaGivesExperience1","Global",1)~ DO 2
ADD_TRANS_TRIGGER LIIA 8 ~GlobalLT("LiiaGivesExperience2","Global",1)~ DO 3
ADD_TRANS_TRIGGER LIIA 8 ~GlobalLT("LiiaGivesExperience3","Global",1)~ DO 4
ADD_TRANS_TRIGGER LIIA 8 ~GlobalLT("LiiaGivesExperience4","Global",1)~ DO 5
ADD_TRANS_TRIGGER LIIA 8 ~GlobalLT("LiiaGivesExperience5","Global",1)~ DO 6 
ADD_TRANS_ACTION LIIA BEGIN 8 END BEGIN 2 END ~SetGlobal("LiiaGivesExperience1","Global",1) AddexperienceParty(4000)~
ADD_TRANS_ACTION LIIA BEGIN 8 END BEGIN 3 END ~SetGlobal("LiiaGivesExperience2","Global",1) AddexperienceParty(4000)~
ADD_TRANS_ACTION LIIA BEGIN 8 END BEGIN 4 END ~SetGlobal("LiiaGivesExperience3","Global",1) AddexperienceParty(4000)~
ADD_TRANS_ACTION LIIA BEGIN 8 END BEGIN 5 END ~SetGlobal("LiiaGivesExperience4","Global",1) AddexperienceParty(4000)~
ADD_TRANS_ACTION LIIA BEGIN 8 END BEGIN 6 END ~SetGlobal("LiiaGivesExperience5","Global",1) AddexperienceParty(4000)~
