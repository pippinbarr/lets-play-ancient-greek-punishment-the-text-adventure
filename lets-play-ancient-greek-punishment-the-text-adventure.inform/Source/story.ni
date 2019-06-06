"Let's Play: Ancient Greek Punishment: The Text Adventure" by Pippin Barr

Part 1 - Setup

Section 1 - Basic setup

Release along with an interpreter.
Use the serial comma.
Use scoring.
[Use undo prevention.]

Section 2 - Simple Chat

Include Simple Chat by Mark Tilford.
Talking to is an action applying to one visible thing.
Understand "talk to [someone]" as talking to.
Report talking to: say "You have nothing to say.".
When play begins: forbid exiting on zero.

A name is a kind of value. The names are Nobody, Sisyphus, Prometheus, Tantalus, Danaid, and Zeno.
The player's name is a name that varies. The player's name is Nobody.


[----------------------------------------------------]


Part 2 - The Bank of the River Styx

Section 1 - The coin

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


Section 2 - The place

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



Section 3 - Talking to Charon

Instead of telling Charon about something:
	if the obol is in your mouth: 
		say "You start trying to speak, but there's something in your mouth.";		
	otherwise if the player's name is Nobody:
		say "Charon rolls his eyes. 'Who are you, exactly?'";
	otherwise:
		say "Charon holds up a palm. 'Save it.'";
	
Instead of asking Charon about something:
	if the obol is in your mouth:
		say "You start trying to speak, but there's something in your mouth.";		
	otherwise:
		say "Charon looks at you with disinterest, then stops looking at you with equal disinterest";
		
Talk to Charon, Hello Charon, My Name Is Sisyphus, Nevermind are chat nodes.

Instead of talking to Charon when the obol is in your mouth:
	say "You start trying to speak, but there's something in your mouth.";		

Instead of talking to Charon when the clipboard is secret:
	say "Before you can get a word in, Charon monotones, 'And you are?'[paragraph break]You realise you don't know and fall silent.";

Instead of talking to Charon when the player's name is not Nobody:
	say "Charon isn't interested in talking to you about anything. Ever.";

Report giving text for Talk to Charon: 
	say "Before you can get a word in, Charon monotones, 'And you are?'[paragraph break]Recalling the list of names on the clipboard, you say:[paragraph break]";
    
Carry out finding responses to Talk to Charon: 
	link to My Name Is Sisyphus; 
	link to Nevermind.
    
Report giving link to My Name Is Sisyphus: 
	Instead say "'I'm Sisyphus!'";
Report giving text for My Name Is Sisyphus: 
	Now the player's name is Sisyphus;
	Instead say "Charon raises his eyebrow, 'Oh yeah? Sure thing. Give me the coin.'. [paragraph break]He holds out a bony hand.";

Report giving link to Nevermind: 
	instead say "'Never mind...' ";
Report giving text for Nevermind: 
	instead say "You shrug, 'Never mind...'[paragraph break]Charon smirks.";

Instead of talking to Charon: run a conversation from Talk to Charon.


Section 4 - Paying Charon

Instead of giving the obol to Charon, try paying Charon.

Paying is an action applying to one visible thing.
Understand "pay [someone]" as paying.
Instead of paying Charon:
	If the player's name is Nobody:
		say "Charon looks at you wearily, 'There's nothing to pay for until you tell me who you are.' (Maybe you should talk to him first?)";
	otherwise If the player has the obol:
		say "You hand over the small coin. Charon drops it into a pocket and gestures at the ferry. 'Looks like we're in business. Get in.'";
		now Charon has the obol;
	otherwise:
		say "You don't have any money.";

Section 5 - The boat

Instead of entering the ferry when the player's name is Nobody:
	say "Charon bars the way with a long, skinny arm. 'Nobody gets in the ferry without talking to me first.'";

Instead of entering the ferry when the charon does not have the obol:
	say "You haven't paid.";

Before entering the ferry when the player's name is not Nobody and Charon has the obol:
	say	"Charon is seemingly at pains not to help you step into the ferry. Once you're established, he climbs in after you."
	
After entering the ferry:
	say "Charon sets about unmooring the ferry.";
	Charon gets into the ferry in one turn from now;
	The ferry departs in two turns from now;

Instead of exiting when the player is in the ferry and the ferry is in The Bank of the River Styx:
	say "Charon stops you with a look. 'There's no undoing things now.'";

At the time when Charon gets into the ferry:
	say "Charon steps deftly into the ferry and takes up his position at the oars.";
	Now Charon is in the ferry;

At the time when the ferry departs:
	If the player's name is Sisyphus:
		say "With a series of surprisingly muscular pulls on the oars, Charon sends the ferry across the river. You barely have time to take in the gloomy fog and lack of scenery before the prow of the boat grinds onto the rocky sand of a beach.[paragraph break]Charon looks at you implacably. You intuit that it's time for you to get out.";
		Move the ferry to The Bottom of the Hill;
	
After exiting when the player was in the ferry:
	say "Charon oars away without giving you a second thought.";
	Move the ferry to the Bank of the River Styx;
	continue the action;

Section 6 - Skip aheads

Sisyphus is an action applying to nothing.
Understand "Sisyphus" as Sisyphus.
Instead of Sisyphus:
	if the player is in the Bank of the River Styx:
		Remove the obol from play;
		Now the player is in The Bottom of the Hill;
	Otherwise:
		say "Nothing happens. You didn't think escape would be that easy did you?";

Section 7 - Tests

Test sisyphus with "open mouth / x clipboard / talk to charon / 1 / pay charon / get into boat / z / z".


Part 3 - Sisyphus

The Bottom of the Hill is a room. The description is "A grey, gritty beach meets the edge of the river. To the north a low, bare hill rises gently upward.".

The worryingly large boulder is here. It is an object. The description is "That really is a lot of rock.".
Understand "rock" or "stone" as the boulder.
Instead of taking the boulder, say "That would be hilarious, but it's too big, too heavy, and too destined to punish you for that.".





Part 4 - Tantalus

[The apple is an object. It is edible. <- e.g. it's funny to have ontological properties applied to things, even though can never carry out the associated action.]



Part 5 - Prometheus



Part 6 - Danaid



Part 7 - Zeno
