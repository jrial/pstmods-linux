
REPLACE_TRIGGER_TEXT BMORTE ~LastPersonTalkedTo("Annah")~ ~InParty("Annah") NearbyDialog("DANNAH")~
REPLACE_TRIGGER_TEXT BMORTE ~LastPersonTalkedTo("Grace")~ ~InParty("Grace") NearbyDialog("DGRACE")~
REPLACE_TRIGGER_TEXT BMORTE ~LastPersonTalkedTo("Nordom")~ ~InParty("Nordom") NearbyDialog("DNORDOM")~

REPLACE_TRIGGER_TEXT BANNAH ~LastPersonTalkedTo("Morte")~ ~InParty("Morte") NearbyDialog("DMORTE")~
REPLACE_TRIGGER_TEXT BANNAH ~LastPersonTalkedTo("Grace")~ ~InParty("Grace") NearbyDialog("DGRACE")~

REPLACE_TRIGGER_TEXT BGRACE ~LastPersonTalkedTo("Annah")~ ~InParty("Annah") NearbyDialog("DANNAH")~
REPLACE_TRIGGER_TEXT BGRACE ~LastPersonTalkedTo("Morte")~ ~InParty("Morte") NearbyDialog("DMORTE")~
REPLACE_TRIGGER_TEXT BGRACE ~LastPersonTalkedTo("Dakkon")~ ~InParty("Dakkon") NearbyDialog("DDAKKON")~
REPLACE_TRIGGER_TEXT BGRACE ~LastPersonTalkedTo("Nordom")~ ~InParty("Nordom") NearbyDialog("DNORDOM")~

REPLACE_TRIGGER_TEXT BVHAILOR ~LastPersonTalkedTo("Morte")~ ~InParty("Morte") NearbyDialog("DMORTE")~
REPLACE_TRIGGER_TEXT BVHAILOR ~LastPersonTalkedTo("Annah")~ ~InParty("Annah") NearbyDialog("DANNAH")~
REPLACE_TRIGGER_TEXT BVHAILOR ~LastPersonTalkedTo("Grace")~ ~InParty("Grace") NearbyDialog("DGRACE")~

REPLACE_TRIGGER_TEXT BNORDOM ~LastPersonTalkedTo("Morte")~ ~InParty("Morte") NearbyDialog("DMORTE")~
REPLACE_TRIGGER_TEXT BNORDOM ~LastPersonTalkedTo("Annah")~ ~InParty("Annah") NearbyDialog("DANNAH")~
REPLACE_TRIGGER_TEXT BNORDOM ~LastPersonTalkedTo("Grace")~ ~InParty("Grace") NearbyDialog("DGRACE")~
REPLACE_TRIGGER_TEXT BNORDOM ~LastPersonTalkedTo("Vhail")~ ~InParty("Vhail") NearbyDialog("DVHAIL")~


// VERSION 3.0:  Disabling these for all but Vhailor, as it may be causing problems with the original
// banter method not being able to find an available banter.  Vhailor's needs special attention and
// new variables due to the way BANTER.BAF deals with him.

// Some banters are repeated within their files.  Those get a "False()" trigger added.

// Also, each sequence of banters between two characters is set to be on a loop, restarting once it's
// completed.  Disabling that... each banter just once.  There's enough distinct ones to support it.
// It also sets it up for easy addition of new, fan-created banters.  Now would be a good time for
// someone to dig through the wav files for unused ones, if there are any.


// For Morte's banters
ADD_STATE_TRIGGER BMORTE 51 ~False()~ 52
REPLACE_ACTION_TEXT DGRACE ~SetGlobal("Morte_Talked_Grace","GLOBAL",0)~   ~IncrementGlobal("Morte_Talked_Grace","GLOBAL",1)~
REPLACE_ACTION_TEXT DANNAH ~SetGlobal("Morte_Talked_Nordom","GLOBAL",0)~  ~IncrementGlobal("Morte_Talked_Nordom","GLOBAL",1)~
REPLACE_ACTION_TEXT BMORTE ~SetGlobal("Morte_Talked_Annah","GLOBAL",0)~   ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)~
REPLACE_ACTION_TEXT BMORTE ~GlobalSet("Morte_Talked_Annah","GLOBAL",0)~   ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)~
REPLACE_ACTION_TEXT BMORTE ~GlobalSet("Morte_Talked_Grace","GLOBAL",0)~   ~IncrementGlobal("Morte_Talked_Grace","GLOBAL",1)~

// For Annah's banters
ADD_STATE_TRIGGER BANNAH 27 ~False()~
REPLACE_ACTION_TEXT DMORTE ~SetGlobal("Annah_Talked_Morte","GLOBAL",0)~   ~IncrementGlobal("Annah_Talked_Morte","GLOBAL",1)~
REPLACE_ACTION_TEXT DMORTE ~GlobalSet("Annah_Talked_Morte","GLOBAL",0)~   ~IncrementGlobal("Annah_Talked_Morte","GLOBAL",1)~
REPLACE_ACTION_TEXT DANNAH ~SetGlobal("Annah_Talked_Grace","GLOBAL",0)~   ~IncrementGlobal("Annah_Talked_Grace","GLOBAL",1)~
REPLACE_ACTION_TEXT DANNAH ~SetGlobal("Annah_Talked_Grace", "GLOBAL", 0)~ ~IncrementGlobal("Annah_Talked_Grace","GLOBAL",1)~
REPLACE_ACTION_TEXT DGRACE ~SetGlobal("Annah_Talked_Grace","GLOBAL",0)~   ~IncrementGlobal("Annah_Talked_Grace","GLOBAL",1)~
REPLACE_ACTION_TEXT DGRACE ~GlobalSet("Annah_Talked_Grace","GLOBAL",0)~   ~IncrementGlobal("Annah_Talked_Grace","GLOBAL",1)~

// For Grace's banters
REPLACE_ACTION_TEXT BGRACE  ~SetGlobal("Grace_Talked_Annah", "GLOBAL",0)~  ~IncrementGlobal("Grace_Talked_Annah","GLOBAL",1)~
REPLACE_ACTION_TEXT DANNAH  ~GlobalSet("Grace_Talked_Annah","GLOBAL",0)~   ~IncrementGlobal("Grace_Talked_Annah","GLOBAL",1)~
REPLACE_ACTION_TEXT BGRACE  ~SetGlobal("Grace_Talked_Nordom", "GLOBAL",0)~ ~IncrementGlobal("Grace_Talked_Nordom","GLOBAL",1)~
REPLACE_ACTION_TEXT DDAKKON ~SetGlobal("Grace_Talked_Dakkon", "GLOBAL",0)~ ~IncrementGlobal("Grace_Talked_Dakkon","GLOBAL",1)~
REPLACE_ACTION_TEXT DDAKKON ~GlobalSet("Grace_Talked_Dakkon","GLOBAL",0)~  ~IncrementGlobal("Grace_Talked_Dakkon","GLOBAL",1)~
REPLACE_ACTION_TEXT DMORTE  ~SetGlobal("Grace_Talked_Morte", "GLOBAL",0)~  ~IncrementGlobal("Grace_Talked_Morte","GLOBAL",1)~

// For Vhailor's banters.
ADD_TRANS_ACTION BVHAILOR BEGIN 1 END BEGIN 0 END ~IncrementGlobal("Vhail_Talked_Morte","GLOBAL",1)~
ADD_TRANS_ACTION BVHAILOR BEGIN 3 END BEGIN 0 END ~IncrementGlobal("Vhail_Talked_Annah","GLOBAL",1)~
ADD_TRANS_ACTION DGRACE BEGIN 380 END BEGIN 0 END ~IncrementGlobal("Vhail_Talked_Grace","GLOBAL",1)~

// For Nordom's banters
ADD_STATE_TRIGGER BNORDOM 37 ~False()~ 38
REPLACE_ACTION_TEXT DMORTE  ~SetGlobal("Nordom_Talked_Morte","GLOBAL",1)~ ~IncrementGlobal("Nordom_Talked_Morte","GLOBAL",1)~
REPLACE_ACTION_TEXT DMORTE  ~SetGlobal("Nordom_Talked_Morte","GLOBAL",0)~ ~IncrementGlobal("Nordom_Talked_Morte","GLOBAL",1)~
REPLACE_ACTION_TEXT BNORDOM ~SetGlobal("Nordom_Talked_Grace","GLOBAL",0)~ ~IncrementGlobal("Nordom_Talked_Grace","GLOBAL",1)~
REPLACE_ACTION_TEXT BNORDOM ~GlobalSet("Nordom_Talked_Morte","GLOBAL",0)~ ~IncrementGlobal("Nordom_Talked_Morte","GLOBAL",1)~
REPLACE_ACTION_TEXT DMORTE  ~SetGlobal("Nordom_Talked_Annah","GLOBAL",0)~ ~IncrementGlobal("Nordom_Talked_Annah","GLOBAL",1)~
ADD_TRANS_ACTION DVHAIL BEGIN 157 END BEGIN 0 END ~IncrementGlobal("Nordom_Talked_Vhail","GLOBAL",1)~

// For Vhailor's banters, for some odd reason, Vhailor's resets and creates a zombie.
ADD_TRANS_ACTION BVHAILOR BEGIN 0 END BEGIN 0 END ~SetDialog("BVHAILOR")~
ADD_TRANS_ACTION BVHAILOR BEGIN 1 END BEGIN 0 END ~IncrementGlobal("Vhail_Talked_Morte","GLOBAL",1)SetDialog("DVHAIL")~
ADD_TRANS_ACTION BVHAILOR BEGIN 2 END BEGIN 0 END ~SetDialog("BVHAILOR")~
ADD_TRANS_ACTION BVHAILOR BEGIN 3 END BEGIN 0 END ~IncrementGlobal("Vhail_Talked_Annah","GLOBAL",1)SetDialog("DVHAIL")~
ADD_TRANS_ACTION DGRACE BEGIN 380 END BEGIN 0 END ~IncrementGlobal("Vhail_Talked_Grace","GLOBAL",1)~


// Sigh. Vhailor is a huge pain in my ass.  The above doesn't quite work.  The goal here is that the black isle
// banter generator can find valid states in his file, without repeating for my banter generator.
// I've got the "_Talked_" variables stopping BANTER.BAF from going to his dialogue file for each possibility,
// but the problem is that, once in, it doesn't necessarily pick the state that was still "legal"
// based on the IF parameters in BANTER.BAF.  Morte's banter could be used up, but Grace passes all the
// conditions, calls his banter, and because Morte's state weight is lower, it comes up again.  And again.
// So, we duplicate the three states with weights.  The original 3 (with lowest weights) keep the state trigger that now
// actually does something (since the _Talked_ variables never changed in the original).  However, we add
// 3 more states that don't have that trigger.  Those are just for the BI banter generator to find.


/*

APPEND BVHAILOR
  IF ~InParty("Morte")NearbyDialog("DMORTE")Global("Lawful_Vhailor_5","GLOBAL",0)~ THEN BEGIN COPY-OF-0 // from:
    SAY #31488
    IF ~~ THEN DO ~SetGlobalTimer("Banter_Timer","GLOBAL",SIX_HOURS)GlobalSet("Banter_Attempt","GLOBAL",1)SetDialog("BVHAILOR")~ EXTERN ~DMORTE~ 646
  END

  IF ~InParty("Annah")NearbyDialog("DANNAH")Global("Lawful_Vhailor_5","GLOBAL",0)~ THEN BEGIN COPY-OF-2 // from:
    SAY #63855
    IF ~~ THEN DO ~SetGlobalTimer("Banter_Timer","GLOBAL",SIX_HOURS)GlobalSet("Banter_Attempt","GLOBAL",1)SetDialog("BVHAILOR")~ EXTERN ~DANNAH~ 314
  END

  IF ~InParty("Grace")NearbyDialog("DGRACE")~ THEN BEGIN COPY-OF-4 // from:
    SAY #63857
    IF ~~ THEN DO ~SetGlobalTimer("Banter_Timer","GLOBAL",SIX_HOURS)GlobalSet("Banter_Attempt","GLOBAL",1)~ EXTERN ~DGRACE~ 380
  END
END
*/

// Now add Timer starters to every state when the banter begins
// Also reset our Banter Attempt counter
ADD_TRANS_ACTION BMORTE BEGIN 0 1 3 5 7 9 10 12 14 16 19 21 24 26 28 30 32 34 36 38 39 40 42 44 46 49 END BEGIN 0 END
  ~GlobalSet("Banter_Attempt","GLOBAL",0)~
ADD_TRANS_ACTION BANNAH BEGIN 0 2 4 5 7 9 11 13 14 16 18 20 23 25 END BEGIN 0 END
  ~GlobalSet("Banter_Attempt","GLOBAL",0)~
ADD_TRANS_ACTION BGRACE BEGIN 0 1 2 4 5 6 8 9 11 13 14 16 18 21 23 END BEGIN 0 END
  ~GlobalSet("Banter_Attempt","GLOBAL",0)~
ADD_TRANS_ACTION BNORDOM BEGIN 0 1 3 4 5 7 8 10 12 14 16 18 21 22 24 26 27 29 30 32 36 END BEGIN 0 END
  ~GlobalSet("Banter_Attempt","GLOBAL",0)~
ADD_TRANS_ACTION BVHAILOR BEGIN 0 2 4 END BEGIN 0 END
  ~GlobalSet("Banter_Attempt","GLOBAL",0)~

REPLACE_ACTION_TEXT BMORTE   ~GlobalSet("Banter_Attempt","GLOBAL",0)~ ~SetGlobalTimer("Banter_Timer","GLOBAL",%BANTER-INTERVAL%)SetGlobal("Banter_Attempt","GLOBAL",0)~
REPLACE_ACTION_TEXT BANNAH   ~GlobalSet("Banter_Attempt","GLOBAL",0)~ ~SetGlobalTimer("Banter_Timer","GLOBAL",%BANTER-INTERVAL%)SetGlobal("Banter_Attempt","GLOBAL",0)~
REPLACE_ACTION_TEXT BGRACE   ~GlobalSet("Banter_Attempt","GLOBAL",0)~ ~SetGlobalTimer("Banter_Timer","GLOBAL",%BANTER-INTERVAL%)SetGlobal("Banter_Attempt","GLOBAL",0)~
REPLACE_ACTION_TEXT BNORDOM  ~GlobalSet("Banter_Attempt","GLOBAL",0)~ ~SetGlobalTimer("Banter_Timer","GLOBAL",%BANTER-INTERVAL%)SetGlobal("Banter_Attempt","GLOBAL",0)~
REPLACE_ACTION_TEXT BVHAILOR ~GlobalSet("Banter_Attempt","GLOBAL",0)~ ~SetGlobalTimer("Banter_Timer","GLOBAL",%BANTER-INTERVAL%)SetGlobal("Banter_Attempt","GLOBAL",0)~



// Juggle the state weights around a bit, so you don't get -all- the banters between two party members bunched
// together when 3 or more with banters are present.
// Version 3.51:  Some banters were getting skipped due to state weights, tweaked them some more, none should get skipped now except
// in some cases when you're missing necessary third party members when their turn comes up, which seems to be by design.
SET_WEIGHT BANNAH 16 #1
SET_WEIGHT BANNAH 18 #3
SET_WEIGHT BANNAH 20 #5
SET_WEIGHT BANNAH 23 #7

SET_WEIGHT BGRACE 9 #1
SET_WEIGHT BGRACE 13 #3
SET_WEIGHT BGRACE 16 #4
SET_WEIGHT BGRACE 18 #7
SET_WEIGHT BGRACE 21 #10
SET_WEIGHT BGRACE 8  #15

SET_WEIGHT BMORTE 32 #0
SET_WEIGHT BMORTE 34 #2
SET_WEIGHT BMORTE 36 #5
SET_WEIGHT BMORTE 38 #10
SET_WEIGHT BMORTE 39 #4
SET_WEIGHT BMORTE 40 #6
SET_WEIGHT BMORTE 42 #8
SET_WEIGHT BMORTE 44 #12
SET_WEIGHT BMORTE 46 #15
SET_WEIGHT BMORTE 49 #18

SET_WEIGHT BNORDOM 22 #1
SET_WEIGHT BNORDOM 24 #4
SET_WEIGHT BNORDOM 26 #9
SET_WEIGHT BNORDOM 27 #2
SET_WEIGHT BNORDOM 29 #5
SET_WEIGHT BNORDOM 30 #7
SET_WEIGHT BNORDOM 32 #11
SET_WEIGHT BNORDOM 36 #8

// Version 3.51 - add setdialog to the end of each banter for whomever started a banter, to make absolutely sure no one can get permanently
// stuck in their banter file.

REPLACE_ACTION_TEXT BANNAH   ~IncrementGlobal("Annah_Talked_~ ~ActionOverride("Annah",SetDialog("DANNAH"))IncrementGlobal("Annah_Talked_~
REPLACE_ACTION_TEXT BANNAH   ~GlobalSet("Annah_Talked_~ ~ActionOverride("Annah",SetDialog("DANNAH"))GlobalSet("Annah_Talked_~
REPLACE_ACTION_TEXT BANNAH   ~SetGlobal("Annah_Talked_~ ~ActionOverride("Annah",SetDialog("DANNAH"))SetGlobal("Annah_Talked_~

REPLACE_ACTION_TEXT BGRACE   ~IncrementGlobal("Grace_Talked_~ ~ActionOverride("Grace",SetDialog("DGRACE"))IncrementGlobal("Grace_Talked_~

REPLACE_ACTION_TEXT BMORTE   ~IncrementGlobal("Morte_Talked_~ ~ActionOverride("Morte",SetDialog("DMORTE"))IncrementGlobal("Morte_Talked_~
REPLACE_ACTION_TEXT BMORTE   ~GlobalSet("Morte_Talked_~ ~ActionOverride("Morte",SetDialog("DMORTE"))GlobalSet("Morte_Talked_~
REPLACE_ACTION_TEXT BMORTE   ~SetGlobal("Morte_Talked_~ ~ActionOverride("Morte",SetDialog("DMORTE"))SetGlobal("Morte_Talked_~

REPLACE_ACTION_TEXT BNORDOM  ~IncrementGlobal("Nordom_Talked_~ ~ActionOverride("Nordom",SetDialog("DNORDOM"))IncrementGlobal("Nordom_Talked_~
REPLACE_ACTION_TEXT BNORDOM  ~GlobalSet("Nordom_Talked_~ ~ActionOverride("Nordom",SetDialog("DNORDOM"))GlobalSet("Nordom_Talked_~
REPLACE_ACTION_TEXT BNORDOM  ~SetGlobal("Nordom_Talked_~ ~ActionOverride("Nordom",SetDialog("DNORDOM"))SetGlobal("Nordom_Talked_~

REPLACE_ACTION_TEXT BVHAILOR ~IncrementGlobal("Vhail_Talked_~ ~ActionOverride("Vhail",SetDialog("DVHAIL"))IncrementGlobal("Vhail_Talked_~

REPLACE_ACTION_TEXT DANNAH  ~IncrementGlobal("Morte_Talked_~ ~ActionOverride("Morte",SetDialog("DMORTE"))IncrementGlobal("Morte_Talked_~
REPLACE_ACTION_TEXT DANNAH  ~IncrementGlobal("Annah_Talked_~ ~ActionOverride("Annah",SetDialog("DANNAH"))IncrementGlobal("Annah_Talked_~
REPLACE_ACTION_TEXT DANNAH  ~IncrementGlobal("Grace_Talked_~ ~ActionOverride("Grace",SetDialog("DGRACE"))IncrementGlobal("Grace_Talked_~
REPLACE_ACTION_TEXT DANNAH  ~GlobalSet("Annah_Talked_~ ~ActionOverride("Annah",SetDialog("DANNAH"))GlobalSet("Annah_Talked_~
REPLACE_ACTION_TEXT DANNAH  ~SetGlobal("Annah_Talked_~ ~ActionOverride("Annah",SetDialog("DANNAH"))SetGlobal("Annah_Talked_~
REPLACE_ACTION_TEXT DANNAH  ~GlobalSet("Nordom_Talked_~ ~ActionOverride("Nordom",SetDialog("DNORDOM"))GlobalSet("Nordom_Talked_~
REPLACE_ACTION_TEXT DANNAH  ~SetGlobal("Nordom_Talked_~ ~ActionOverride("Nordom",SetDialog("DNORDOM"))SetGlobal("Nordom_Talked_~

REPLACE_ACTION_TEXT DDAKKON ~IncrementGlobal("Grace_Talked_~ ~ActionOverride("Grace",SetDialog("DGRACE"))IncrementGlobal("Grace_Talked_~
REPLACE_ACTION_TEXT DGRACE  ~GlobalSet("Grace_Talked_~ ~ActionOverride("Grace",SetDialog("DGRACE"))GlobalSet("Grace_Talked_~
REPLACE_ACTION_TEXT DGRACE  ~SetGlobal("Grace_Talked_~ ~ActionOverride("Grace",SetDialog("DGRACE"))SetGlobal("Grace_Talked_~

REPLACE_ACTION_TEXT DGRACE  ~IncrementGlobal("Morte_Talked_~ ~ActionOverride("Morte",SetDialog("DMORTE"))IncrementGlobal("Morte_Talked_~
REPLACE_ACTION_TEXT DGRACE  ~IncrementGlobal("Annah_Talked_~ ~ActionOverride("Annah",SetDialog("DANNAH"))IncrementGlobal("Annah_Talked_~
REPLACE_ACTION_TEXT DGRACE  ~IncrementGlobal("Vhail_Talked_~ ~ActionOverride("Vhail",SetDialog("DVHAIL"))IncrementGlobal("Vhail_Talked_~
REPLACE_ACTION_TEXT DGRACE  ~GlobalSet("Annah_Talked_~ ~ActionOverride("Annah",SetDialog("DANNAH"))GlobalSet("Annah_Talked_~
REPLACE_ACTION_TEXT DGRACE  ~SetGlobal("Annah_Talked_~ ~ActionOverride("Annah",SetDialog("DANNAH"))SetGlobal("Annah_Talked_~

REPLACE_ACTION_TEXT DMORTE  ~IncrementGlobal("Grace_Talked_~ ~ActionOverride("Grace",SetDialog("DGRACE"))IncrementGlobal("Grace_Talked_~
REPLACE_ACTION_TEXT DMORTE  ~IncrementGlobal("Annah_Talked_~ ~ActionOverride("Annah",SetDialog("DANNAH"))IncrementGlobal("Annah_Talked_~
REPLACE_ACTION_TEXT DMORTE  ~IncrementGlobal("Nordom_Talked_~ ~ActionOverride("Nordom",SetDialog("DNORDOM"))IncrementGlobal("Nordom_Talked_~
REPLACE_ACTION_TEXT DMORTE  ~GlobalSet("Annah_Talked_~ ~ActionOverride("Annah",SetDialog("DANNAH"))GlobalSet("Annah_Talked_~
REPLACE_ACTION_TEXT DMORTE  ~SetGlobal("Annah_Talked_~ ~ActionOverride("Annah",SetDialog("DANNAH"))SetGlobal("Annah_Talked_~
REPLACE_ACTION_TEXT DMORTE  ~GlobalSet("Nordom_Talked_~ ~ActionOverride("Nordom",SetDialog("DNORDOM"))GlobalSet("Nordom_Talked_~
REPLACE_ACTION_TEXT DMORTE  ~SetGlobal("Nordom_Talked_~ ~ActionOverride("Nordom",SetDialog("DNORDOM"))SetGlobal("Nordom_Talked_~

REPLACE_ACTION_TEXT DNORDOM ~IncrementGlobal("Grace_Talked_~ ~ActionOverride("Grace",SetDialog("DGRACE"))IncrementGlobal("Grace_Talked_~
REPLACE_ACTION_TEXT DNORDOM ~GlobalSet("Morte_Talked_~ ~ActionOverride("Morte",SetDialog("DMORTE"))GlobalSet("Morte_Talked_~
REPLACE_ACTION_TEXT DNORDOM ~SetGlobal("Morte_Talked_~ ~ActionOverride("Morte",SetDialog("DMORTE"))SetGlobal("Morte_Talked_~

REPLACE_ACTION_TEXT DVHAIL  ~IncrementGlobal("Nordom_Talked_~ ~ActionOverride("Nordom",SetDialog("DNORDOM"))IncrementGlobal("Nordom_Talked_~
