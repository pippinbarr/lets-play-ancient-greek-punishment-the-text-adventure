"Let's Play: Ancient Greek Punishment: The Text Adventure" by Pippin Barr

Release along with an interpreter.

Use the serial comma.
Use scoring.
[Use undo prevention.]

Include Simple Chat by Mark Tilford.
Talking to is an action applying to one visible thing.
Understand "talk to [someone]" as talking to.
Report talking to: say "You have nothing to say.".
When play begins: forbid exiting on zero.

A name is a kind of value. The names are Nobody, Sisyphus, Prometheus, Tantalus, Danaid, and Zeno.
The player's name is a name that varies. The player's name is Nobody.

Part 1 - The Bank of the River Styx

[DEALING WITH THE COIN]

The obol is an object. The description is "A small silver coin imprinted with the blurry image of a sleepy man's face."
[Eventually  the obol should be in the player's mouth to start with and you should notice it when you talk to Charon.]
Your mouth is part of the player. The description is "You purse your lips and can just make them out while staring strenuously downward. As you do, you feel something in your mouth." Your mouth is a container. Your mouth can be open or closed. Your mouth is closed.
The obol is in your mouth.
Understand "coin" or "money" as the obol.

Instead of opening your mouth:
	if your mouth is open:
		say "It's open already, and you've never looked better.";
	otherwise if the obol is in your mouth:
		say "You open your mouth and neatly catch the small coin that drops out.";
		now the player has the obol;
		now the your mouth is open;
	otherwise:
		say "Let's not. You shouldn't just stand around with your mouth open, you know.";

Instead of closing your mouth:
	if your mouth is open:
		say "Good idea.";
		now your mouth is closed;
	otherwise:
		say "It's closed already.";



[THE PLACE]

The Bank of the River Styx is a room. The description is "Here you are at the famous River Styx. The water flows sluggishly by."

Charon's ferry is here. The description is "It's Charon's ferry, not totally unlike a small dinghy. Right now it is pulled up onto the bank of the river, ready to shove off into the river."
Charon's ferry is a vehicle.
Charon's ferry is scenery.
Understand "boat" or "dinghy" as the ferry.

The clipboard is an object. The description is "Charon irritably angles the clipboard away from you, but not before you've seen the list of names he's expecting for the trip across the river:[line break][line break]Sisyphus[line break]Tantalus[line break]Prometheus[line break]Danaids[line break]Zeno";

The clipboard can be secret. The clipboard is secret.
After examining the clipboard, now the clipboard is not secret.

Charon is here. The description is "Charon is leaning against his ferry. His eyes look sourly out from beneath a cowl. He is holding a clipboard."
Charon is a man.
Charon is carrying the clipboard.

Charon's eyes are part of Charon. The description is "Unhappy."
The cowl is wearable. The description is "It's a standard-issue cowl."
Charon is wearing the cowl.
Understand "Charon's cowl" as the cowl.

[Ultimately I would like "talk to" to work on Charon.]
[Ultimately  I would like control over the default 'ask' response]
		
[TALKING TO CHARON]

Instead of telling Charon about something:
	if the obol is in your mouth: 
		say "You start trying to speak, but there's something in your mouth.";		
	otherwise:
		say "Charon rolls his eyes. 'Who are you, exactly?'"
	
Instead of asking Charon about something:
	if the obol is in your mouth:
		say "You start trying to speak, but there's something in your mouth.";		
	otherwise:
		say "Charon looks at you coldly. 'None of your business.'"
		
Talk to Charon, Hello Charon, My Name Is Sisyphus, Nevermind are chat nodes.

Instead of talking to Charon when the obol is in your mouth:
	say "You start trying to speak, but there's something in your mouth.";		

Instead of talking to Charon when the clipboard is secret:
	say "Before you can get a word in, Charon monotones, 'And you are?'[paragraph break]You realise you don't know and fall silent.";

Report giving text for Talk to Charon: 
	instead say "Before you can get a word in, Charon monotones, 'And you are?'[paragraph break]Recalling the list of names on the clipboard, you say:[paragraph break]".
    
Carry out finding responses to Talk to Charon: 
	link to My Name Is Sisyphus; 
	link to Nevermind.
    
Report giving link to My Name Is Sisyphus: 
	Instead say "'I'm Sisyphus!'";
Report giving text for My Name Is Sisyphus: 
	Now the player's name is Sisyphus;
	Instead say "Charon raises his eyebrow, 'Oh yeah? Sure thing. Give me the coin.'. [paragraph break]He gestures impatiently with a bony hand.";

Report giving link to Nevermind: 
	instead say "'Never mind...' ";
Report giving text for Nevermind: 
	instead say "You shrug, 'Never mind...'[paragraph break]Charon smirks.";

Instead of talking to Charon: run a conversation from Talk to Charon.

Test sisyphus with "open mouth / x clipboard / talk to charon / 1".

[PAYING CHARON]

Instead of giving the obol to Charon, try paying Charon.

Paying is an action applying to one visible thing.
Understand "pay [someone]" as paying.
Instead of paying Charon:
	If the player's name is Nobody:
		say "Charon looks at you wearily, 'There's nothing to pay for until you tell me who you are.' (Maybe you should talk to him first?)";
	otherwise If the player has the obol:
		say "You hand over the small coin.";
		now Charon has the obol;
	otherwise:
		say "You don't have any money.";

[ENTERING THE BOAT]

Instead of entering the ferry when the player's name is Nobody:
	say "Charon bars the way with a long, skinny arm. 'Nobody gets in the ferry without talking to me first.'";

Instead of entering the ferry when the charon does not have the obol:
	say "You haven't paid.";



Part 2 - Sisyphus

Test push with "push boulder / e / push boulder / e / push boulder / e / w/ w / w".

Part 3 - Tantalus

[The apple is an object. It is edible. <- e.g. it's funny to have ontological properties applied to things, even though can never carry out the associated action.]

Part 4 - Prometheus

Part 5 - Danaids

Part 6 - Zeno
