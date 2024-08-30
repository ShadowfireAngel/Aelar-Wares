BEGIN _SAelar

CHAIN IF ~NumTimesTalkedTo(0)~ THEN _SAelar Store1
@30 /* Hail, and well met traveler! Welcome to Aelar's Magical Emporium! I am Aelar and it would be my pleasure to show you the array of items that I have available for sale today! */
END
IF~~THEN REPLY @40 DO ~StartStore("_SAelar",LastTalkedToBy())~ EXIT //Well met, Aelar. Please show me what wares you have.
IF~~THEN REPLY @42 EXTERN _SAelar 2 //Well met, Aelar. Thank you but I am not interested in purchasing anything.


CHAIN IF ~NumTimesTalkedToGT(0)~ THEN _SAelar Store1R
@31 /* Welcome back traveler! Can I interest you in any of my wares today? */
END
IF~~THEN REPLY @41 DO ~StartStore("_SAelar",LastTalkedToBy())~ EXIT //Please show me what you have for sale.
IF~~THEN REPLY @43 EXTERN _SAelar 2 //I'm not interested in your wares, thank you.


CHAIN _SAelar 2
@32 /* I understand. Thank you for your patronage. May the gods protect you on your journey. */
EXIT
