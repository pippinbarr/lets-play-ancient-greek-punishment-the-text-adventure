"Let's Play: Ancient Greek Punishment: The Text Adventure" by Pippin Barr

Part 1 - Setup

Section 1 - Basic setup

Release along with an interpreter.
Use the serial comma.
Use scoring.
[Use undo prevention.]
Rule for printing room description details: stop.
The can't push vertically rule is not listed in any rulebook.

The description of the player is "You look deader than you remember looking.".
Your hand is part of the player. The description is "Dead.".
The fog is a backdrop. It is everywhere. The description is "It makes you feel distinctly less happy.".
Instead of taking the fog, say "You try to take some and it goes about as well as expected.".

Section 3 - Simple Chat

Include Simple Chat by Mark Tilford.
Talking to is an action applying to one visible thing.
Understand "talk to [someone]" as talking to.
Report talking to: say "You have nothing to say.".
When play begins: forbid exiting on zero.
Use scoring.

A name is a kind of value. The names are Nobody, Sisyphus, Prometheus, Tantalus, Danaid, and Zeno.
The player's name is a name that varies. The player's name is Nobody.

When play begins: 
	now the left hand status line is "[the player's surroundings]"; 
	now the right hand status line is "[score]/1 points";

Section 4 - Some basic verb overrides

Instead of tasting something, say "Nothing tastes of anything in Hades.".
Instead of smelling something, say "A faint aroma of crushed bones.".
Instead of kissing something, say "Hades has a strict no-kissing policy.".
Instead of touching something, say "No touching!".
Instead of attacking something, say "Wrong game.".
Instead of burning something, say "You left your lighter in your other pants.".
Instead of waking up, say "Unfortunately you really are in Hades. Tough break.".
Instead of thinking, say "How'd that work out for you?".
Instead of listening to something, say "Nothing is forthcoming.".
Instead of cutting something, say "With what?".
Instead of jumping, say "Boing...".
Instead of tying something to something, say "With what?".
Instead of drinking something, say "Your drinking days are over.".
Instead of eating something, say "Your eating days are over.".
Instead of saying sorry, say "It's a bit late for that.".
Instead of climbing something, say "Nah.".
Instead of sleeping, say "But there's so much to do!".
Instead of pushing something, say "Stop being so pushy!".
Instead of pulling something, say "Stop beign so pully!".


[----------------------------------------------------]



Part 2 - Charon and the Ferry

Section 1 - The place

The Bank of the River Styx is a room. The description is "Here you are at the famous River Styx. The water flows sluggishly by."
The CharonRiver is a backdrop in The Bank of the River Styx. The description is "The river seems to sneer at you.". Understand "water" and "river" as the CharonRiver.

Charon's ferry is here. The description is "It's Charon's ferry, not totally unlike a small dinghy. [if the ferry is in The Bank of the River Styx]Right now it is moored at the bank of the river, ready to shove off.[otherwise]Right now it is grounded on a gritty beach.[end if]".
Charon's ferry is a vehicle.
Understand "boat" or "dinghy" as the ferry.
The oars are part of the ferry. The description is "Good, solid oars.".

The clipboard is an object. The description is "Charon irritably angles the clipboard away from you, but not before you've seen the list of names he's expecting for the trip across the river:[line break][line break]Sisyphus[line break]Tantalus[line break]Prometheus[line break]Danaids[line break]Zeno";

The clipboard can be secret. The clipboard is secret.
After examining the clipboard, now the clipboard is not secret.
Understand "board" as the clipboard.

Charon is here. The description is "Charon is one tall drink of stagnant water. His eyes look sourly out from beneath a cowl. [if Charon is in the ferry]He is sitting at the oars.[otherwise]He is holding a clipboard.[end if]".
Charon is a man.
Charon is carrying the clipboard.
Understand "man" as Charon.

Charon's eyes are part of Charon. The description is "Unhappy."
Charon's hand is part of Charon. The description is "Bony.".
Charon's arm is part of Charon. The description is "It makes thin arms look fat.".
Charon's pocket is part of Charon. It is a container. The description is "Looks roomy.".
Instead of searching Charon's pocket, say "Charon's frown is enough to prevent you.".
Instead of examining Charon's pocket: 
    say "[description of Charon's pocket][line break]";
    omit contents in listing.
The cowl is wearable. The description is "It's a standard-issue cowl."
Charon is wearing the cowl.
Understand "Charon's cowl" as the cowl.


Section 2 - The obol

The obol is an object. The description is "A small silver coin imprinted with the blurry image of a sleepy man's face."
The coin face is part of the obol. The description is "He looks like he's been through a lot.". Understand "coin face" and "face" and "sleepy man" and "sleepy man's face" as the coin face.
Instead of tasting the obol, say "The obol has spent plenty of time in your mouth already.".
Instead of eating the obol, say "The obol has spent plenty of time in your mouth already.".

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

Instead of showing the obol to Charon:
	say "Charon deadpans, 'Good for you.'";


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
		
Charon Conversation, My Name Is Sisyphus, Nevermind are chat nodes.

Instead of talking to Charon when the obol is in your mouth:
	say "You start trying to speak, but there's something in your mouth.";		

Instead of talking to Charon when the clipboard is secret:
	say "Before you can get a word in, Charon monotones, 'And you are?'[paragraph break]You realise you don't know and fall silent.";

Instead of talking to Charon when the player's name is not Nobody:
	say "Charon isn't interested in talking to you about anything else.";

Report giving text for Charon Conversation: 
	Instead say "Before you can get a word in, Charon monotones, 'And you are?'[paragraph break]Recalling the list of names on the clipboard, you say:[paragraph break]";
    
Carry out finding responses to Charon Conversation: 
	link to My Name Is Sisyphus; 
	link to Nevermind.
    
Report giving link to My Name Is Sisyphus: 
	Instead say "'I'm Sisyphus!'";
Report giving text for My Name Is Sisyphus: 
	Now the player's name is Sisyphus;
	Instead say "Charon looks at you blankly, 'Sure. Pay me.'. [paragraph break]He holds out a bony hand.";

Report giving link to Nevermind: 
	instead say "'Never mind...' ";
Report giving text for Nevermind: 
	instead say "You shrug, 'Never mind...'[paragraph break]Charon smirks.";

Instead of talking to Charon: run a conversation from Charon Conversation.


Section 4 - Paying Charon

Instead of giving the obol to Charon, try paying Charon.

Paying is an action applying to one visible thing.
Understand "pay [someone]" as paying.
Instead of paying Charon:
	If the player's name is Nobody:
		say "Charon looks at you wearily, 'No paying until you tell me who you are.' (Maybe you should talk to him first.)";
	otherwise If the player has the obol:
		say "You hand over the small coin. Charon drops it into a pocket and gestures at the ferry.";
		now the obol is in Charon's pocket;
	otherwise:
		say "You don't have any money.";


Section 5 - The boat

Instead of entering the ferry when the player's name is Nobody:
	say "Charon bars the way with a long, skinny arm. 'Nobody gets in the ferry without talking to me first.'";

Instead of entering the ferry when the charon does not have the obol:
	say "You haven't paid.";

Before entering the ferry when the player's name is not Nobody and Charon has the obol and Charon is not in the ferry:
	say	"Charon takes pains not to help you step into the ferry."
	
After entering the ferry:
	say "Charon sets about unmooring the ferry.";
	Charon gets into the ferry in one turn from now;
	The ferry departs in two turns from now;

Instead of exiting when the player is in the ferry and the ferry is in The Bank of the River Styx:
	say "Charon stops you with a look. 'There's no undo down here.'";

At the time when Charon gets into the ferry:
	say "Charon steps deftly into the ferry and takes up his position at the oars.";
	Now Charon is in the ferry;

At the time when the ferry departs:
	If the player's name is Sisyphus:
		say "With a series of surprisingly muscular pulls on the oars, Charon sends the ferry across the river. You barely have time to take in the gloomy fog and lack of scenery before the prow of the boat grinds onto the rocky sand of a beach.[paragraph break]Charon looks at you implacably. You intuit that it's time for you to get out.";
		Move the ferry to The Bottom of the Hill;
	
After exiting when the player was in the ferry:
	The ferry vanishes in zero turns from now;
	continue the action;	
		
At the time when the ferry vanishes:
	say "Charon oars away without giving you a second thought.";
	Move the ferry to the Bank of the River Styx;


Section 6 - Skip aheads

Sisyphus is an action applying to nothing.
Understand "Sisyphus" as Sisyphus.
Instead of Sisyphus:
	if the player is in the Bank of the River Styx:
		Remove the obol from play;
		Now the player is in The Bottom of the Hill;
	Otherwise:
		say "Nothing happens. Surely you didn't think it would be that easy did you?";

Xyzzy is an action applying to nothing.
Understand "Xyzzy" as Xyzzy.
Instead of Xyzzy:
	say "Nothing happens. Magic isn't real.";


Section 7 - Tests

Test sisyphus with "open mouth / x clipboard / talk to charon / 1 / pay charon / get into boat / z / z / get out".



[----------------------------------------------------]



Part 3 - Sisyphus

Section 1 - the Hill Rooms

The previous location is a room that varies.
First carry out going rule: 
    now the previous location is the location.

After deciding the scope of the player: 
    if the location is in The Whole Hill, place the boulder in scope.

Rule for reaching inside a room: 
    say "It's too far away."; 
    deny access.

The Whole Hill is a region. The Bottom of the Hill, A Little Way Up the Hill, Partway Up the Hill, A Fair Way Up the Hill, Quite Far Up the Hill, Nearly the Top of the Hill, and The Hilltop are in The Whole Hill.

The Hillside is a backdrop in The Whole Hill. The description is "It's a good, solid hill. It probably never gets depressed.". Understand "hill" as the hillside.
The dirt is part of the Hillside. The description is "Not as dirty as you'd have thought.".
Instead of taking the dirt, say "You're not here to dig holes.".

The Beach is a backdrop in The Whole Hill. The description is "Apparently death is a beach too.". Understand "sand" as the beach.

The SisyphusRiver is a backdrop in The Whole Hill. The description is "The river seems to sneer at you.". Understand "water" and "river" as the SisyphusRiver.

The Bottom of the Hill is a room. The description is "A grey, gritty beach meets the edge of the river. A low, bare hill rises gently upward.".

The worryingly large boulder is here. It is an object. The description is "That really is a lot of rock.[if the player is not in The Bottom of the Hill] At least it looks a bit smaller from up here.[end if]".
Understand "rock" or "stone" as the boulder.
The boulder is pushable between rooms.
The boulder can be rolling or stationary. The boulder is stationary.

Instead of taking the boulder, say "That would be hilarious, but it's too big, too heavy, and too destined to punish you for that.".

A Little Way Up the Hill is above the Bottom of the Hill. The printed name is "A Little Way Up the Hill". The description is "Just above the beach the grit-sand turns into a packed dirt of the same colour. The occasional sprig of dead grass serves to liven it up.".
The dead grass is scenery in A Little Way Up the Hill. The description is "It's dead, Jim.".
Instead of taking the grass, say "Leave it alone, it's been through enough.".
Instead of pushing the grass, say "Pick on someone your own size.".

Partway Up the Hill is above the A Little Way Up the Hill. The description is "The hill slopes up and down away from you, formidable in its general featurelessness. It looks like you're exactly half-way up. Or down.".

A Fair Way Up the Hill is above Partway Up the Hill. The printed name is "A Fair Way Up the Hill". The description is "A continuation of this relentless expanse of hillside. There seems to be a small hole in the dirt.".
The hole is a container in A Fair Way Up the Hill. It is scenery. The description is "A small absence of dirt amidst the dirt.".

Quite Far Up the Hill is above A Fair Way Up the Hill. The description is "[if the previous location is A Fair Way Up the Hill]Far enough up the hill to be out of breath if you don't get out much. [end if]Like the rest of the hill, this part is made entirely out of dirt.".

Nearly the Top of the Hill is above Quite Far Up the Hill. The description is "It's so barren up here you can't even imagine something growing, and you have a pretty good imagination.".
The Note to Sisyphus from Zeus is here. The printed name is "note from Zeus". The description is "The note reads:

lol[line break]
- Zeus".
Instead of taking the Note to Sisyphus from Zeus:
	say "A sudden gust of wind blows it out of your grasp and away into the distance. The wind sounded weirdly like laughter.";
	remove the Note to Sisyphus from play;
	
The Hilltop is above Nearly the Top of the Hill. The description is "The view is disappointing, with just the river below and everywhere a thick blanket of fog that prevents you seeing far in any direction.[if the boulder is not in The Hilltop] You should really go get the boulder.[end if]". The printed name is "The Top of the Hill".



Section 2 - Pushing the boulder

Instead of pushing the boulder:
	try pushing the boulder to up;	
	
Instead of going north, say "The only way is up, baby.".
Instead of going south, say "The only way is up, baby.".
Instead of going east, say "The only way is up, baby.".
Instead of going west, say "The only way is up, baby.".

Before going up with the boulder:
	if the boulder is rolling:
		Say "You go to push the boulder, but it's big, heavy, and on the move so you wisely step aside.";
		Stop the action;
	otherwise:
		Say "You furrow your brow and heave the boulder forward.";
		Now the player props the boulder;
		continue the action;
		
Instead of going down with the boulder:
	If the boulder is rolling:
		Say "The boulder is rolling downhill just fine without your help.";
		stop the action;
	otherwise:
		Say "For reasons known only to you, you give the boulder a little push downhill.";
		stop the action;

After going up with the boulder:
	if the player is not in the Hilltop:
		now the player props the boulder;
	continue the action;
	
Before doing something:	
	now the player does not prop the boulder;

Propping relates one person to one thing. The verb to prop means the propping relation.

Every turn when the boulder is not in The Bottom of the Hill and the player does not prop the boulder:
	let next place be the room down from the location of the boulder;
	now the boulder is rolling;
	If the player is in the Hilltop and the boulder is in the Hilltop:
		say "The boulder slips from your grasp as though it has a mind of its own and starts rolling back down the hill";
	otherwise if the player can see the boulder:	
		say "The boulder rolls calmly away down the hill.";
	otherwise if the next place is not the bottom of the hill and the player is not in the next place:
		say "Below, you see the boulder rolling down the hill.";
	move the boulder to the next place;
	If the player can see the boulder:
		say "The boulder rolls into view.";
	if the next place is the bottom of the hill:
		if the player cannot see the boulder:
			if the player is in the room up from the next place:
				say "[line break]";
			say "You see the boulder settle into place at the bottom of the hill.";
		otherwise:
			say "[line break]The boulder settles ponderously back at its starting position.";
		now the boulder is stationary;
	If the player is in the Hilltop:
		If the boulder is in the Hilltop:
			increase the score by 1;



[----------------------------------------------------]



Part 4 - Tantalus

[The apple is an object. It is edible. <- e.g. it's funny to have ontological properties applied to things, even though can never carry out the associated action.]



[----------------------------------------------------]



Part 5 - Prometheus



[----------------------------------------------------]



Part 6 - Danaid



[----------------------------------------------------]



Part 7 - Zeno
