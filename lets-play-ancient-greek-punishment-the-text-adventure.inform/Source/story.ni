"Let's Play: Ancient Greek Punishment: The Text Adventure" by Pippin Barr

Include Room Description Headings by Erwin Genstein.
Include Simple Chat by Mark Tilford.
[Include Mentioned In Room Description by Ron Newcomb.]
[Include Supplemental Actions by Al Golden.]
[Include Liquid Handling by Al Golden.]
[Include Basic Help Menu by Emily Short.]

Part 0 - Tests

Test sisyphus with "open mouth / x clipboard / talk to charon / 1 / pay charon / get in / z / z / get out".

Test tantalus with "open mouth / x clipboard / talk to charon / 2 / pay charon / get in / z / z / get out".

Test prometheus with "open mouth / x clipboard / talk to charon / 3 / pay charon / get in / z / z / get out".

Test danaid with "open mouth / x clipboard / talk to charon / 4 / pay charon / get in / z / z / get out".

Test zeno with "open mouth / x clipboard / talk to charon / 5 / pay charon / get in / z / z / get out".

Part 0.5 - Skip aheads

To say you're stuck:
	say "That particular magical incantation only works at the start of the game. Now that you're here, you're stuck here. If you want to get out so bad you can always [b]restart[r] or [b]quit[r].";

To say incantation:
	say "You utter the magical words and the world seems to shudder on its axis, blurring everything for a moment. When you adjust your vision, your surroundings have changed.";

SkipToSisyphus is an action applying to nothing.
Understand "My name is Sisyphus" and "I'm Sisyphus" and "I am Sisyphus" and "Sisyphus" as SkipToSisyphus.
Instead of SkipToSisyphus:
	if the player is in The Starting Place:
		say "[incantation]";
		Remove the obol from play;
		Now the player is in The Bottom of the Hill;
		Now the player's name is Sisyphus;
	Otherwise if the player's name is Sisyphus:
		say "It sure is.";
	Otherwise:
		say "[you're stuck]";

SkipToPrometheus is an action applying to nothing.
Understand "My name is Prometheus" and "I'm Prometheus" and "I am Prometheus" and "Prometheus" as SkipToPrometheus.
Instead of SkipToPrometheus:
	if the player is in The Starting Place:
		say "[incantation]";
		Now the player's name is Prometheus;
		Remove the obol from play;
		The player is chained down in zero turns from now;
	Otherwise if the player's name is Prometheus:
		say "It sure is.";
	Otherwise:
		say "[you're stuck]";

SkipToDanaid is an action applying to nothing.
Understand "My name is Danaid" and "I'm a Danaid" and "I'm Danaid" and "I am a Danaid" and "I'm am Danaid" and "Danaid" and "Danaids" as SkipToDanaid.
Instead of SkipToDanaid:
	if the player is in The Starting Place:
		say "[incantation]";
		Remove the obol from play;
		Now the player is in DanaidRoom;
		Now the player's name is Danaid;
	otherwise if the player's name is Danaid:
		say "It sure is.";
	Otherwise:
		say "[you're stuck]";

SkipToTantalus is an action applying to nothing.
Understand "My name is Tantalus" and "I'm Tantalus" and "I am Tantalus" and "Tantalus" as SkipToTantalus.
Instead of SkipToTantalus:
	if the player is in The Starting Place:
		say "[incantation]";
		Remove the obol from play;
		Now the player is in the pool;
		Now the player's name is Tantalus;
	otherwise if the player's name is Tantalus:
		say "It sure is.";
	Otherwise:
		say "[you're stuck]";

SkipToZeno is an action applying to nothing.
Understand "My name is Zeno" and "I'm Zeno" and "I am Zeno" and "Zeno" as SkipToZeno.
Instead of SkipToZeno:
	if the player is in The Starting Place:
		say "[incantation]";
		Remove the obol from play;
		Now the player is on the starting line;
		Now the player's name is Zeno;
	otherwise if the player's name is Zeno:
		say "It sure is.";
	Otherwise:
		say "[you're stuck]";

Part 1 - Setup

Section 1 - Basic setup

Release along with an interpreter.
Use the serial comma.
[Use scoring.]
Use undo prevention.
Rule for printing room description details: stop.
The can't push vertically rule is not listed in any rulebook.

To say b:
	say "[bold type]";
	
To say r:
	say "[roman type]";
	
To say f: 
	say "[fixed letter spacing]";

To say v: 
	say "[variable letter spacing]";	

To say lb:
	say "[line break]";
	
To say pb:
	say "[paragraph break]";

	
To say basic instructions:
	say "This is a work of interactive fiction and tries to follow standard ways of existing in a textual world:
	[pb]
	To look at where you are type [b]LOOK[r]. [lb]
	To look at something specific type [b]LOOK AT THING[r] or [b]EXAMINE THING[r]. [lb]
	To pick something up type [b]GET THING[r] or [b]TAKE THING[r]. [lb]
	To talk to someone type [b]TALK TO PERSON[r]. [lb]
	To go somewhere type a direction like [b]NORTH[r] or [b]UP[r].
	
	Generally speaking, look at everything you can and then work out what to do from there.";

Asking for help is an action applying to nothing.
Understand "help" and "instructions" as asking for help.
Instead of asking for help:
	say "[basic instructions]";
	
After printing the banner text:
	say "[pb]Type [b]HELP[r] for help.[pb]";

The description of the player is "You look deader than you remember looking.".
Your hand is part of the player. The description is "Cold. Dead.". Understand "hands" as your hand.
The fog is a backdrop. It is everywhere. The description is "It makes you feel distinctly less happy.".
Instead of taking the fog, say "You try to take some and it goes about as well as expected.".

A thing can be seen or unseen.

Carry out examining a thing: 
    now the noun is seen.

Section 2 - Simple Chat

Talking to is an action applying to one visible thing.
Understand "talk to [someone]" as talking to.
Report talking to: say "You have nothing to say.".

When play begins: forbid exiting on zero.
Use scoring.

A name is a kind of value. The names are Nobody, Sisyphus, Prometheus, Tantalus, Danaid, and Zeno.
The player's name is a name that varies. The player's name is Nobody.

points is a number that varies.

When play begins: 
	now points is 0;
	now the left hand status line is "[the player's surroundings]"; 
	now the right hand status line is "[points] points";

Section 3 - Some basic verb overrides

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
Instead of jumping, say "You're too dead to be so jumpy.".
Instead of tying something to something, say "With what?".
Instead of drinking something, say "Your drinking days are over.".
Instead of eating something, say "Your eating days are over.".
Instead of saying sorry, say "It's a bit late for that.".
Instead of climbing something, say "Leave climbing for the living.".
Instead of sleeping, say "But there's so much to do!".
Instead of pushing something, say "Stop being so pushy!".
Instead of pulling something, say "Stop being so pully!".


[----------------------------------------------------]

Part 1.5 - Everywhere

The sky is a backdrop. It is everywhere. The description is "Gloomy and doomy.".


Part 3 - Charon and the Ferry

Section 1 - The place

The Starting Place is a room. The description is "Here you are on the gritty beach at the edge of the famous River Styx. The water flows sluggishly by.". The printed name is "The Bank of the River Styx".
The River Styx is a backdrop. The description is "The river seems to sneer at you.". Understand "water" as the River Styx when the player is in The Starting Place.
The River Styx is everywhere.
Instead of taking the river styx, say "It is neither portable nor potable.".
Instead of entering the river styx, say "If you ever knew how to swim, you don't anymore.".
The sneer is part of the river styx. The description is "What an unpleasant river.".
Instead of drinking the river styx, say "It's not a nice river.".

The beach is part of the River Styx. The description is "Apparently death is a beach, too. Not much of a beach day, though.". Understand "sand" and "ground" as the beach.

Understand the command "sit" and "lie" as something new.
Sitting on is an action applying to one thing.
Understand "sit on [something]" as sitting on.
Instead of sitting on something, say "No rest for the wicked.".

Lying on is an action applying to one thing.
Understand "lie on [something]" as lying on.
Instead of lying on something, say "No rest for the wicked.".

Instead of sitting on the ferry, try entering the ferry.

Charon's ferry is here. The description is "It's Charon's ferry, not totally unlike a small dinghy. [if the ferry is in The Starting Place]Right now it is moored at the bank of the river, its oars lying lengthwise along the bench seats, ready to shove off.[otherwise]Right now it is grounded on a gritty beach.[end if]".
Charon's ferry is a vehicle.
Understand "boat" or "ship" or "dinghy" as the ferry.
The oars are part of the ferry. The description is "Oarn't you glad you looked?".
The bench seats are part of the ferry. The description is "The seats don't look especially comfortable, but this [italic type]is[r] Hades.". Understand "seat" as the bench seats.

Understand "shove [something]" as pushing.
Instead of pushing the ferry, say "Charon will handle all that.".

Instead of entering the bench seats, try entering the ferry.

Instead of taking the ferry, say "Good one.".
Instead of taking the oars, say "Charon throws you a look that very clearly communicates 'do not touch those oars.'".
Instead of touching the oars, say "You think better of it.".
Instead of going when the player is in the ferry, say "You're still in the ferry. You should [b]get out[r] first.".

The clipboard is an object. The description is "Charon irritably angles the clipboard away from you, but not before you've seen the list of names he's expecting for the trip across the river:[lb][lb]Sisyphus[lb]Tantalus[lb]Prometheus[lb]Danaids[lb]Zeno".
The clipboard can be secret. The clipboard is secret.
After examining the clipboard, now the clipboard is not secret.
Understand "board" as the clipboard.

Charon is here. The description is "Charon is one tall drink of stagnant water. His eyes look sourly out from beneath a cowl. [if Charon is in the ferry]He is sitting at the oars.[otherwise]He is holding a [b]clipboard[r].[end if]".
Charon is a man.
Charon is carrying the clipboard.
Understand "man" as Charon.

Charon's eyes are part of Charon. The description is "Unhappy."
Charon's hand is part of Charon. The description is "Bony.".
Charon's arm is part of Charon. The description is "It makes thin arms look fat.".
Charon's pocket is part of Charon. It is a container. The description is "Looks roomy.".
Charon's frown is part of Charon. The description is "His most common expression.".
Charon's face is part of Charon. The description is "Charon's face is only partially visible, but completely disdainful.".
Instead of searching Charon's pocket, say "Charon's frown is enough to prevent you.".
Instead of examining Charon's pocket: 
    say "[description of Charon's pocket][lb]";
    omit contents in listing.
The cowl is wearable. The description is "It's a standard-issue cowl."
Charon is wearing the cowl.
Understand "Charon's cowl" as the cowl.


Section 2 - The obol

The obol is an object. The description is "A small silver coin imprinted with the blurry image of a sleepy man's face."
The coin face is part of the obol. The description is "He looks like he's been through a lot.". Understand "blurry image" and "coin face" and "face" and "sleepy man" and "sleepy man's face" and "man's face" as the coin face.
Instead of tasting the obol, say "The obol has spent plenty of time in your mouth already.".
Instead of eating the obol, say "The obol has spent plenty of time in your mouth already.".

Your mouth is part of the player. The description is "You purse your lips and can just make them out while staring strenuously downward. As you do, you feel something in your mouth." Your mouth is a container. Your mouth can be open or closed. Your mouth is closed.
The obol is in your mouth.
Understand "coin" or "money" as the obol.

Instead of opening your mouth:
	if your mouth is open:
		say "It's open already, and you've never looked better.";
	otherwise if the obol is in your mouth:
		say "You open your mouth and neatly catch the small [b]coin[r] that drops out.";
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

Spitting is an action applying to nothing.
Understand "spit" as spitting.
Instead of spitting:
	if the obol is in your mouth:
		say "You spit a small coin into your hand.";
		now the player has the obol;
	otherwise:
		say "Rude.";
		
Spitting out is an action applying to one visible thing.
Understand "spit [something]" and "spit out [something]" as spitting out.
Instead of spitting out, try spitting.

Instead of showing the obol to Charon:
	say "Charon deadpans, 'Good for you.'";


Section 3 - Talking to Charon

To say spit to speak:
	say "You start trying to speak, but there's something in your mouth. Perhaps you should [b]spit[r] it out.";

Instead of telling Charon about something:
	if the obol is in your mouth: 
		say "[spit to speak]";		
	otherwise if the player's name is Nobody:
		say "Charon rolls his eyes. 'Who are you, exactly?' He glances down at his [b]clipboard[r]. You realise you don't know.";
	otherwise:
		say "Charon holds up a palm. 'Save it.'";
	
Instead of asking Charon about something:
	if the obol is in your mouth:
		say "[spit to speak]";		
	otherwise:
		say "Charon looks at you with disinterest, then stops looking at you with equal disinterest";
		
Charon Conversation, My Name Is Sisyphus, My Name Is Tantalus, My Name Is Danaid, My Name Is Prometheus, My Name Is Zeno, Nevermind are chat nodes.

Instead of talking to Charon when the obol is in your mouth:
	say "[spit to speak]";		

Instead of talking to Charon when the clipboard is secret:
		say "Charon rolls his eyes. 'Who are you, exactly?' He glances down at his [b]clipboard[r]. You realise you don't know.";

Instead of talking to Charon when the player's name is not Nobody:
	say "Charon isn't interested in talking to you about anything else.";

Report giving text for Charon Conversation: 
	Instead say "Before you can get a word in, Charon monotones, 'And you are?'[pb]Recalling the list of names on the clipboard, you say:[pb]";
    
Carry out finding responses to Charon Conversation: 
	link to My Name Is Sisyphus; 
	link to My Name Is Tantalus; 
	link to My Name Is Prometheus;
	link to My Name Is Danaid;
	link to My Name Is Zeno;
	link to Nevermind.
    
To say pay me:
	say "Charon looks at you blankly, 'Sure. [b]Pay[r] me.'. [pb]He holds out a bony hand.";

Report giving link to My Name Is Sisyphus: 
	Instead say "'I'm Sisyphus!'";
Report giving text for My Name Is Sisyphus: 
	Now the player's name is Sisyphus;
	Instead say "[pay me]";
	
Report giving link to My Name Is Zeno: 
	Instead say "'I'm Zeno!'";
Report giving text for My Name Is Zeno: 
	Now the player's name is Zeno;
	Instead say "[pay me]";

Report giving link to My Name Is Tantalus: 
	Instead say "'I'm Tantalus!'";
Report giving text for My Name Is Tantalus: 
	Now the player's name is Tantalus;
	Instead say "[pay me]";
	
Report giving link to My Name Is Prometheus: 
	Instead say "'I'm Prometheus!'";
Report giving text for My Name Is Prometheus: 
	Now the player's name is Prometheus;
	Instead say "[pay me]";

Report giving link to My Name Is Danaid: 
	Instead say "'I'm a Danaid!'";
Report giving text for My Name Is Danaid: 
	Now the player's name is Danaid;
	Instead say "[pay me]";

Report giving link to Nevermind: 
	instead say "'Never mind...' ";
Report giving text for Nevermind: 
	instead say "You shrug, 'Never mind...'[pb]Charon smirks.";

Instead of talking to Charon: run a conversation from Charon Conversation.


Section 4 - Paying Charon

Instead of giving the obol to Charon, try paying Charon.

Paying is an action applying to one visible thing.
Understand "pay [someone]" as paying.
Instead of paying Charon:
	If the player's name is Nobody:
		say "Charon looks at you wearily, 'No paying until you tell me who you are.' (Maybe you should [b]talk to[r] him first.)";
	otherwise If the player has the obol:
		say "You hand over the small coin. Charon drops it into a pocket and gestures at the [b]ferry[r]. You should probably [b]get in[r].";
		now the obol is in Charon's pocket;
	otherwise if the obol is in Charon's pocket:
		say "You've already paid.";
	otherwise:
		say "You don't have any money.";


Section 5 - The boat

Getting out of is an action applying to one thing.
Understand "get out of [something]" as getting out of.
Instead of getting out of the Charon's ferry, try exiting.

Instead of getting off Charon's ferry, try exiting.

Instead of entering the ferry when the player's name is Nobody:
	say "Charon bars the way with a long, skinny arm. You should probably [b]talk to[r] him before presuming to get into his ferry.";

Instead of entering the ferry when the the obol is not in Charon's pocket:
	say "You need to [b]pay[r] Charon before you can get in.";

Before entering the ferry when the player's name is not Nobody and the obol is in Charon's pocket and Charon is not in the ferry:
	say	"Charon takes pains not to help you step into the ferry, but you make it in alright."
	
After entering the ferry:
	say "Charon sets about unmooring the ferry.";
	Charon gets into the ferry in one turn from now;
	The ferry departs in two turns from now;

At the time when Charon gets into the ferry:
	say "Charon steps deftly into the ferry and takes up his position at the oars.";
	Now Charon is in the ferry;

At the time when the ferry departs:
	say "With a series of surprisingly muscular pulls on the oars, Charon sends the ferry across the river. You barely have time to take in the gloomy fog and lack of scenery before the prow of the boat grinds onto the gritty sand of a beach.[pb]Charon looks at you implacably. You intuit that it's time for you to [b]get out[r].";
	If the player's name is Sisyphus:
		Move the ferry to The Bottom of the Hill;
	otherwise if the player's name is Prometheus:
		Move the ferry to PrometheusRoom;
	otherwise if the player's name is Tantalus:
		Move the ferry to TantalusRoom;
	otherwise if the player's name is Zeno:
		Move the ferry to ZenoRoom;
	otherwise if the player's name is Danaid:
		Move the ferry to DanaidRoom;

Before exiting when the player is in Charon's ferry, say "You manage to jump out of the ferry clumsily.".

Instead of exiting when the player is in the ferry and the ferry is in The The Starting Place:
	say "Charon stops you with a look. 'Once you're on, you're on.'";

After exiting when the player was in the ferry:
	If the player's name is Prometheus:
		say "Charon jumps lightly out of the ferry behind you and leads to you the imposing black rock embedded in the beach. With his guidance you lie down on top of it and Charon chains you securely in place. This done, he descends from the rock and returns to the ferry.";
		The player is chained down in zero turns from now;
		Now Charon is in PrometheusRoom;
	otherwise if the player's name is Tantalus:
		say "Charon hops out of the ferry behind you and leads to you the pool a little way up the beach. He points and you wade into the centre of the water. Satisfied you're in position, Charon turns and walks back to the ferry.";
		now the player is in the pool;
		Now Charon is in TantalusRoom;
	otherwise if the player's name is Zeno:
		say "Charon points you toward the starting line drawn in the sand and you walk obediently over to it.";
		now the player is on the starting line;
	The ferry vanishes in zero turns from now;
		
At the time when the ferry vanishes:
	say "Before he departs, Charon mentions you can get to your punishment faster by just announcing yourself immediately, such as saying '[b][player's name][r]' or something like that. His duty discharged, Charon oars away without giving you a another thought.";
	Now Charon is in the ferry;
	Move the ferry to The Starting Place;




Xyzzy is an action applying to nothing.
Understand "Xyzzy" as Xyzzy.
Instead of Xyzzy:
	say "Nothing happens. Magic isn't real. You could swear you can hear Zeus chuckling somewhere just out of view.";




[----------------------------------------------------]



Part 4 - Sisyphus

Section 1 - the Hill Rooms

The previous location is a room that varies.
First carry out going rule: 
    now the previous location is the location.

After deciding the scope of the player: 
    if the location is in The Whole Hill, place the boulder in scope.

Rule for reaching inside a room: 
	if the noun is the boulder:
		say "You'll need to head back [b]down[r] the hill if you want to do anything with the boulder.";
	otherwise:
		say "It's too far away."; 
	deny access.

The Whole Hill is a region. The Bottom of the Hill, A Little Way Up the Hill, Partway Up the Hill, A Fair Way Up the Hill, Quite Far Up the Hill, Nearly the Top of the Hill, and The Hilltop are in The Whole Hill.

The Hillside is a backdrop in The Whole Hill. The description is "It's a good, solid hill. It probably never gets depressed.". Understand "hill" as the hillside.
The dirt is part of the Hillside. The description is "Not as dirty as you'd have thought.".
Instead of taking the dirt, say "You're not here to dig holes.".

The Bottom of the Hill is a room. The description is "A grey, gritty beach meets the edge of the river. A low, bare hill rises gently upward.".

The worryingly large boulder is here. It is an object. The description is "That really is a lot of rock.[if the location of the player is not the location of the boulder] At least it looks a bit smaller from up here. You should probably go [b]down[r] and start pushing it up the hill.[otherwise if the post-it note is part of the boulder] There is a [b]grey post-it note[r] stuck to the boulder at eye-level.[end if]".
Understand "rock" or "stone" as the boulder.
The boulder is pushable between rooms.
The boulder can be rolling or stationary. The boulder is stationary.
The grey post-it note is part of the boulder. The description is "The note just says[pb][f]Push me.[v]".
Instead of examining the grey post-it note when the location of the player is not the location of the boulder:
	say "The post-it note on the boulder is too far away.";
	
After examining the grey post-it note:
	say "The post-it note suddenly tears off the boulder in a gust of wind and loops madly away into the distance.";
	remove the grey post-it note from play;

Instead of taking the boulder, say "That would be hilarious, but it's too big, too heavy, and too destined to punish you for that.".

A Little Way Up the Hill is above the Bottom of the Hill. The printed name is "A Little Way Up the Hill". The description is "Just above the beach the grit-sand turns into a packed dirt of the same colour. The occasional sprig of dead grass serves to liven it up.".
The dead grass is scenery in A Little Way Up the Hill. The description is "It's dead, Jim.".
Instead of taking the grass, say "Leave it alone, it's been through enough.".
Instead of pushing the grass, say "Pick on someone your own size.".

Partway Up the Hill is above the A Little Way Up the Hill. The description is "The hill slopes up and down away from you, formidable in its general featurelessness. It looks like you're exactly half-way up. Or down.".
The imaginary swan is here. The description is "As soon as you look directly at the swan, it's not there anymore. Maybe it was a trick of the light.". The printed name is "swan".
After examining the imaginary swan, remove the imaginary swan from play.

A Fair Way Up the Hill is above Partway Up the Hill. The printed name is "A Fair Way Up the Hill". The description is "A continuation of this relentless expanse of hillside. There seems to be a small hole in the dirt.".
The hole is a container in A Fair Way Up the Hill. It is scenery. The description is "A small absence of dirt amidst the dirt.".
Instead of taking the folded note, try examining the folded note.
The folded note is in the hole. The description is "The note has just one word on it:[pb][f]xyzzy[r]".
After examining the folded note:
	say "Just as you finish reading it, the note blows sharply out of your hand and off into the distance.";
	remove the folded note from play;

Quite Far Up the Hill is above A Fair Way Up the Hill. The description is "[if the previous location is A Fair Way Up the Hill]Far enough up the hill to be out of breath if you don't get out much. [end if]Like the rest of the hill, this part is made entirely out of dirt.".
The videogame is here.

Every turn:
	if the location of the player is the location of the videogame, remove the videogame from play;

Nearly the Top of the Hill is above Quite Far Up the Hill. The description is "It's so barren up here you can't even imagine something growing, and you have a pretty good imagination. The fog, however, does appear to be coalescing into strange shapes here.".

Table of fog shapes
shape
"a bed"
"an exhausted man"
"Zeus"
"Albert Camus"
"a swan"
"an eagle"
"a bull"

Instead of examining the fog when the player is in Nearly the Top of the Hill:
	choose a random row from the table of fog shapes;
	say "The swirling fog almost looks like [the shape entry].";

	
The Hilltop is above Nearly the Top of the Hill. The description is "The view is disappointing.[if the location of the boulder is not The Hilltop] You should really go get the boulder.[otherwise] The boulder is here at last![end if]". The printed name is "The Top of the Hill".
A plinth is here. The description is "A minimalist marble plinth.".
The chain is part of the plinth. The description is "A thin-yet-resilient metal chain.".
A book is on the plinth. The description is "It's 'The Myth of Sisyphus' by Albert Camus. Apparently you ought to be happy right about now.".
Instead of taking the book, say "It's chained to the plinth.".




Section 2 - Pushing the boulder

Instead of pushing the boulder:
	try pushing the boulder to up;	
	
After going up with the boulder when the grey post-it note is part of the boulder:
	say "The post-it note that was attached to the boulder is dislodged and blows away in a sudden gust of wind.";
	now the grey post-it note is nowhere;
	now the player props the boulder;
	
To say the only way is up:
	say "The only way is [b]up[r], baby.";

Instead of going north from the Whole Hill, say "[the only way is up]".
Instead of going south from the Whole Hill, say "[the only way is up]".
Instead of going east from the Whole Hill, say "[the only way is up]".
Instead of going west from the Whole Hill, say "[the only way is up]".

Before going up with the boulder:
	if the boulder is rolling:
		Say "You think about pushing the boulder, but it's big, heavy, and on the move so you wisely step aside instead.";
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
		Say "The boulder doesn't need your help to head down the hill.";
		stop the action;

After going up with the boulder:
	if the player is not in the Hilltop:
		now the player props the boulder;
	continue the action;
	
Before doing something:	
	now the player does not prop the boulder;

Propping relates one person to one thing. The verb to prop means the propping relation.

Every turn when the boulder is not in The Bottom of the Hill and the player does not prop the boulder:
	let the next place be the room down from the location of the boulder;
	if the boulder is not rolling:
		if the player is in the Hilltop and the boulder is in the Hilltop:
			increase the points by 1;
			say "[bracket]Your score has gone up by 1 point.[close bracket][pb]";		
			say "The boulder slips from your grasp as though it has a mind of its own and starts rolling back down the hill. The rumbling sounds it makes is suspiciously like Zeus's laughter.";						
		otherwise:	
			say "Obeying gravity, the boulder rolls calmly down the hill.";
		now the boulder is rolling;
		move the boulder to the next place;
		If the location of the player is the location of the boulder:
			say "[lb]The boulder rolls into view.";
	otherwise:
		move the boulder to the next place;
		If the location of the player is not the location of the boulder:
			say "The boulder rolls down the hill.";
		otherwise:
			say "The boulder rolls into view.";
	If the next place is the bottom of the hill:		
		if the location of the player is not the location of the boulder:
			say "[lb]Below, you see the boulder settle into place at the bottom of the hill.";
		otherwise:
			say "[lb]The boulder settles ponderously back at its starting position.";
		now the boulder is stationary;



[----------------------------------------------------]



Part 5 - Tantalus

TantalusRoom is a room. The description is "An apple tree extends its branches above a clear [b]pool of water[r] set back on the beach from the river's edge. A single [b]apple[r] hangs from a single branch.". The printed name is "A Desolate Beach".

The tree is a supporter in TantalusRoom. The description is "Its bark is worse than its bite.". The tree is scenery.
The bark is part of the tree. The description is "It's aggressive.".
The branch is part of the tree. The description is "If a tree branch could be said to eye you shiftily, that is what this tree branch is doing. The [b]apple[r] hangs temptingly close.".
The branches are part of the tree. The description is "They're all barren except for the one branch with the [b]apple[r] on it.".
Instead of climbing the tree, say "You recoil from the incredibly sharp bark on the tree."

The apple is on the tree. The apple is edible. The description is "A shiny, delicious apple just begging to be eaten.[if the red post-it note is part of the apple] There is a [b]red post-it note[r] stuck to the apple.[end if]". The apple is scenery.

The red post-it note is part of the apple. The description is "The note on the apple says[pb][f]Eat me.[v]".

After examining the red post-it note:
	say "Just after you finish reading it, the post-it note blows off the apple and away into the distance.";
	now the red post-it note is nowhere;
	
Instead of taking the red post-it note, say "Maybe you should try to [b]read[r] it instead.".

The pool is a container in TantalusRoom. The description is "Crystal clear, eminently drinkable water. There is a [b]blue post-it note[r] floating on the surface.". Understand "water" as the pool. The pool is scenery. 
The blue post-it note is part of the pool. The description is "The note floating in the water says[pb][f]Drink me.[v]".

After examining the blue post-it note:
	say "After you read it, the post-it note is plucked from the water by a gust of wind and flaps wetly into the distance.";
	now the blue post-it note is nowhere;
	
After examining the pool:
	now the blue post-it note is seen;
	
After examining the apple:
	now the red post-it note is seen;
	
Rule for printing the name of the blue post-it while asking which do you mean:
	if the blue post-it note is seen:
		say "[b]blue post-it note[r]";
	otherwise:
		say "the [b]blue post-it note[r] floating in the pool";

Rule for printing the name of the red post-it while asking which do you mean:
	say nothing;
	if the red post-it note is seen:
		say "[b]red post-it note[r]";
	otherwise:
		say "the [b]red post-it note[r] stuck to the apple";


Instead of taking the blue post-it note, say "Maybe you should try to [b]read[r] it instead.".



Instead of exiting when the player is in the pool:
	say "Somehow that's not an option.";

Instead of drinking the pool:
	say "You stoop to drink some water, but it recedes as fast as you move toward it until the bottom of the pool is completely dry. Upon standing, the water rushes back in up to your waist. The gurgling sound it make sounds oddly like Zeus's laughter.";
	
Instead of taking the apple:
	say "You reach up to pluck the apple from its branch, but as you do a gust of wind blows the branch up and away from you. It only resettles when you give up and drop your arm down again. The wind made a sound oddly like Zeus's laughter.";
	
Instead of jumping when the player is in the pool:
	say "You jump up toward the apple on its branch, but a gust of wind blows it just as far out of reach as always and all you manage to do is make a splash. The wind made a sound oddly like Zeus's laughter.";
	
Instead of taking the pool when the player is in the pool:
	say "You cup your hands to gather up some water to drink, but the pool quickly drains before you're able to get anything. Your hands somehow remain bone dry and the pool refills once you've given up. The gurgling sound it makes is oddly like Zeus's laughter.";
	
Instead of eating the apple, try taking the apple;

Every turn when the player is in the pool: 
    choose a random row in the Table of Sustenance Complaints; 
    say "[sustenance entry][paragraph break]".

Table of Sustenance Complaints 
sustenance 
"You're feeling really hungry." 
"You're feeling really thirsty." 
"You're so hungry."
"You're so thirsty."
"You wish you had something to drink."
"You wish you had something to eat."
"You need to eat something."
"You need to drink something."
"Your stomach gurgles."
"You're parched."
"Your mouth is so dry."
"You haven't eaten in forever."
"Your stomach hurts with hunger."
"You feel terribly dehydrated."
"You're starving."

[----------------------------------------------------]



Part 6 - Prometheus

The liver is part of the player. The description is "[if the percentage of the player's liver is 100]You can't see your liver, your flesh is concealing it in the usual way.[otherwise if the percentage of the player's liver is not 0]Frankly, it's a mess.[otherwise]It's gone.[end if]".

The player's liver has a number called percentage. The percentage of the player's liver is 100.

At the time when the player is chained down:
	Now the player is on the rock;
	Now the player is chained;
	Now the right hand status line is "Liver: [percentage of the player's liver]%";

PrometheusRoom is a room. The description is "[if the location of the player is daytime]Beneath what passes for daylight here[otherwise]Dimly lit by what might be a moon somewhere behind the fog[end if], an unpleasantly jagged black rock rises from the ash colored sand of the beach. You are chained to the rock.[if the yellow post-it note is part of the rock] There is a yellow post-it note stuck just next to your head.[end if]". The printed name is "The Rock".
PrometheusRoom can be nighttime or daytime.
The moon is a backdrop in PrometheusRoom. The description is "[if the location of the player is daytime]You can't see it.[otherwise]It's more of a patch of fog slightly brighter than the rest.[end if]".
The sun is a backdrop in PrometheusRoom. The description is "[if the location of the player is daytime]A sun-coloured patch of fog.[otherwise]You can't see it.[end if]".

The rock is scenery in PrometheusRoom. The Rock is a supporter. The description is "It's very black and very rocky. A set of chains are firmly attached to the rock. They also happen to be firmly attaching you to it.".

The yellow post-it note is part of the rock. The description is "The note on the rock says[pb][f]Wait.[v]".

After examining the yellow post-it note:
	say "Just after you finish reading it, the post-it note blows off the rock and away into the distance.";
	now the yellow post-it note is nowhere;
	
Instead of taking the yellow post-it note, say "You're a bit too chained-to-a-rock for that. You could try to [b]read[r] it instead.".

The chains are part of the rock. The description is "The chains are weirdly yellow in colour. They definitely work though.". Understand "chain" as the chains.

A person can be chained or unchained.

Rule for printing an enclosure preposition when the described enclosure is the player's enclosure and described enclosure is the rock: say "chained to ".

Instead of getting off when the player is chained:
	say "You are tightly chained to the rock, you're not going anywhere. At best you could [b]writhe[r], [b]struggle[r], [b]strain[r], or something like that.";
	stop the action;
	
Instead of going when the player is chained:
	try getting off the rock;

Instead of jumping when the player is chained:
	try getting off the rock;
	
Instead of attacking the chains:
	say "You focus your attention on destroying the chains and come out on the losing end.";
	
The eagle is an animal. 
The eagle is nowhere.
Flight distance is a kind of value. The flight distances are appearing, distant, approaching, near, perched, hovering, leaving, and gone.
The eagle can be coming or departing. The eagle is coming.
The eagle has a flight distance called proximity. The proximity of the eagle is appearing.

Table of eagle descriptions
proximity_entry			reply
distant			"It's too far away to see much more than some flapping wings."
approaching			"It's close enough to look quite alarming."
near			"It is way too close for comfort."
perched			"A majestic creature. Terrifying, too. It has a determined look in its eye."
hovering			"It looks irritable."
leaving			"It looks like an eagle that's eaten a full liver for dinner."
gone			"It's gone."

The description of the eagle is "[the reply corresponding to a proximity_entry of the proximity of the eagle in the table of eagle descriptions]".
The eagle's eye is part of the eagle. The description is "[if the proximity of the eagle is perched]It is staring at your liver.[otherwise]You can't seem to make eye-contact with the eagle from here.[end if]".

To say chained down:
	say "You do understand you're chained to a rock, right? At best you can [b]struggle[r].";
	
Instead of attacking the eagle, say "[chained down]".
Instead of touching the eagle, say "[chained down]".
Instead of tasting the eagle, say "[chained down]".
Instead of smelling the eagle, say "Musty.".

Every turn when the player is on the rock:
	if the eagle is coming:
		if the proximity of the eagle is appearing:
			Now the proximity of the eagle is distant;
			say "An eagle appears on the horizon.";
			now the eagle is in PrometheusRoom;
		otherwise if the proximity of the eagle is distant:
			Now the proximity of the eagle is approaching;
			say "The eagle is getting close.";
		otherwise if the proximity of the eagle is approaching:
			Now the proximity of the eagle is near;
			say "The eagle is right above you.";
		otherwise if the proximity of the eagle is near or the proximity of the eagle is hovering:
			if the player is not struggling:
				Now the proximity of the eagle is perched;
				say "The [b]eagle[r] lands heavily beside you. You feel an urge to [one of][b]writhe[r][or][b]struggle[r][or][b]strain[r][or][b]twist[r][or][b]thrash[r][purely at random].";
			now the player is not struggling;
		otherwise if the proximity of the eagle is perched:
			say "The eagle eats some of your liver.";
			decrease the percentage of the player's liver by 10;
			if the percentage of the player's liver is 0:
				now the eagle is departing;
				remove the liver from play;
	otherwise if the eagle is departing:
		if the proximity of the eagle is perched:
			say "Having eaten your liver, the eagle nonchalantly flaps its wings and takes to the air.";
			now the proximity of the eagle is leaving;
		otherwise if the proximity of the eagle is leaving:
			say "The eagle flies off into the distance, emitting a call that sounds like a high-pitched version of Zeus's laughter.";
			now the proximity of the eagle is gone;
			now the eagle is nowhere;			
			Night falls in one turn from now;
		
At the time when night falls:
	say "Night falls.";
	now PrometheusRoom is nighttime;
	Night ends in 1 turn from now;
	
At the time when the night ends:
	say "The night ends abruptly. You feel a brisk tingling sensation where your liver was pecked out by the eagle.";
	now PrometheusRoom is daytime;
	Now the liver is part of the player;
	Now the percentage of the player's liver is 100;
	Now the eagle is coming;
	Now the proximity of the eagle is appearing;
		
Writhe verb is a kind of value. The writhe verbs are struggle, writhe, strain, twist, thrash.

Writhing is an action applying to nothing.
Understand "writhe" and "struggle" and "strain" and "twist" and "thrash" as writhing.
A person can be struggling. The player is not struggling.
After writhing:
	Now the player is struggling;
	if the proximity of the eagle is perched:
		say "You [a random writhe verb] in your chains desperately. It's enough to disturb the eagle, which flaps up into the air.";
		Now the proximity of the eagle is hovering;
	otherwise if the proximity of the eagle is hovering or the proximity of the eagle is near:
		say "You [a random writhe verb] in your chains desperately. It's enough to prevent the eagle from landing.";
		now the proximity of the eagle is hovering;
	otherwise:
		say "You [a random writhe verb] in your chains experimentally. Nothing obvious happens.";
	


[----------------------------------------------------]



Part 7 - Danaid

DanaidRoom is a room. The description is "The sand here is bone dry. Rising out of the ground is a [b]fountain[r] and a little distance from it is a [b]basin[r].". The printed name is "An Arid Beach".

The sand is here. It is scenery. The description is "Could this be literally crushed up bones?". Understand "ground" as the sand.

A basin is here. It is a container. The description is "A wide basin intended for holding liquid.[if the fountain water is in the basin] About a jug's-worth of water is in it right now.[otherwise] Let's say water.[end if][if the holes are revealed] There are holes drilled in the bottom.[end if][if the white post-it note is part of the rim of the basin] There is a [b]white post-it note[r] stuck to the rim.[end if]".
The rim of the basin is part of the basin. It is a supporter. The description is "That's a quality rim.[if the white post-it note is part of the rim of the basin] There is a [b]white post-it note[r] stuck on it.[end if]".
The holes in the basin are part of the basin. The description is "A set of neatly drilled holes perforate the lower part of the basin, providing handy drainage of any liquids placed inside it.".
The holes can be revealed. The holes are not revealed.
After examining the holes, now the holes are revealed.
Instead of taking the basin, say "It's far too heavy.".

The white post-it note is part of the rim of the basin. The description is "The note says[pb][f]Fill me.[v]".

After examining the white post-it note:
	say "Just after you finish reading it, the post-it note blows off the rim of the basin and away into the distance.";
	now the white post-it note is nowhere;
	
Instead of taking the white post-it note, say "Why not just [b]read[r] it instead?".

Before listing nondescript items of DanaidRoom: 
	now the basin is not marked for listing; 
	now the fountain is not marked for listing;

A fountain is here. It is a container. The description is "A small fountain perpetually shooting [b]water[r] a short way up into the air before it cascades down into a shallow bowl.".
The shallow bowl is part of the fountain. The description is "It is etched with images of frowning faces.".
The frowning faces are part of the bowl. The description is "They don't look happy with you. Somehow you know it's you.".
Instead of taking the fountain, say "It's firmly attached.".

The fountain water is in the fountain. The description is "Cool, clear water.". The printed name is "water". The indefinite article of the fountain water is "some".
Understand "water" as the fountain water when the player is in DanaidRoom.
The fountain water is scenery.

Instead of putting the fountain water on the jug:
	try taking the fountain water;
	stop the action.

Instead of taking the fountain water:
	if the fountain water is in the jug:
		say "There's already water in the jug.";
	otherwise if the player has the jug: 
		now the fountain water is in the jug;
		say "You fill the jug with water from the fountain.";
	otherwise:
		say "Maybe you should pick up the [b]jug[r] first.";

A jug is here. It is a portable container. The description is "An earthenware jug with a handle.[if the fountain water is in the jug] It's filled with water.[otherwise] It's empty.[end if]".
The handle is part of the jug. The description is "[if the player has the jug]It fits your hand perfectly, almost like it was made for you.[otherwise]Looks sturdy.[end if]".

Rule for printing the name of the jug while not inserting or removing: 
    say "jug";
    omit contents in listing;

Rule for printing the name of the fountain while not inserting or removing: 
	say "fountain";
    omit contents in listing;

Pouring is an action applying to one visible thing.
Understand "pour [something]" as pouring.
Instead of pouring something, say "Don't think you'll be needing to pour that here in Hades.".	
Instead of pouring the fountain water:
	if the fountain water is in the jug:
		say "You unceremoniously pour the jug of water onto the ground.";
		now the fountain water is in the fountain;
	otherwise:
		say "You tip the empty jug and pour pretend water out of it. It's still empty afterwards.";

Instead of pouring the jug, try pouring the fountain water.

Emptying is an action applying to one carried thing.
Understand "empty [something]" as emptying.
Instead of emptying something, say "That's not something you need to do.".
Instead of emptying the jug, try pouring the jug.

Filling is an action applying to one visible thing.
Understand "fill [something]" as filling.
Instead of filling something, say "You don't need to fill that.".
Instead of filling the jug:
	try taking the fountain water;
Instead of filling the basin:
	try inserting the fountain water into the basin;
Instead of filling the fountain:
	try inserting the fountain water into the fountain;

Instead of inserting the fountain water into the basin:
	if the player has the jug and the fountain water is in the jug:
		say "You carefully pour the water in the jug into the basin. It streams in nicely, catching what little light there is.";
		now the fountain water is in the basin;
		the basin empties in 1 turn from now;
	otherwise if the player has the jug:
		say "The jug is empty.";
	otherwise:
		say "You don't have any water.";

Instead of inserting the fountain water into the fountain:
	if the player has the jug and the fountain water is in the jug:
		say "You carefully pour the water in the jug into the fountain, thereby achieving more or less exactly nothing.";
		now the fountain water is in the fountain;
	otherwise if the player has the jug:
		say "The jug is empty.";
	otherwise:
		say "You don't have any water.";

Pouring it into is an action applying to two visible things.
Understand "pour [something] into [something]" as pouring it into.
Instead of pouring something into something:
	say "You won't be needing to do that.";
Instead of pouring the fountain water into the basin:
	try inserting the fountain water into the basin;
Instead of pouring the jug into the basin:
	try inserting the fountain water into the basin;
Instead of pouring the fountain water into the fountain:
	try inserting the fountain water into the fountain;
Instead of pouring the jug into the fountain:
	try inserting the fountain water into the fountain;
	
At the time when the basin empties:
	say "The water in the basin drains out through several holes with a bubbling noise that sounds like Zeus's laughter. The escaped water immediately dissapates into the sand.";
	now the holes are revealed;
	if the fountain water is in the basin:
		now the fountain water is in the fountain;

[----------------------------------------------------]



Part 8 - Zeno

The player has a number called runs. The runs of the player is 0.

ZenoRoom is a room. The description is "The beach extends off into the fog. A straight [b]track[r] of about 100 meters has been sketched into the sand leading [b]north[r] away from the river with the [b]starting line[r] closest to the water. You can see a [b]green flag[r] in the distance at the end of the track. [if the runs of the player < the number of rows in the table of fractional distance descriptions for Zeno][the description corresponding to a depth of the runs of the player in the table of fractional distance descriptions for Zeno].[otherwise][one of]You are extremely close to the flag[or]You are so close the flag you can taste it[or]You are practically standing on the flag, but not quite[or]You have very nearly finished the race[or]You are incredibly close to finishing the race[purely at random].[end if]". The printed name is "A Flat Beach".

The starting line is a supporter in the ZenoRoom. It is scenery. The description is "A line drawn in the sand.[if the green post-it note is part of the starting line] A [b]green post-it note[r] rests on the sand near the line.[end if]". Understand "start" as the starting line when the player is in ZenoRoom.
Rule for printing an enclosure preposition when the described enclosure is the player's enclosure and described enclosure is the starting line: say "at ".

The green post-it note is part of the starting line. The description is "The note says[pb][f]Run.[v]".

After examining the green post-it note:
	say "Just after you finish reading it, a gust of wind blows the post-it note along the beach and cartwheeling into the distance.";
	now the green post-it note is nowhere;
	
Instead of taking the green post-it note, say "Why not just [b]read[r] it instead?".

The finish line is in the ZenoRoom. It is scenery. The description is "A line drawn in the sand.".

The track is a supporter in the ZenoRoom. It is scenery. The description is "It looks like someone used a stick of driftwood to draw the crude boundaries that lead [b]north[r] to the flag at the finish line.".

The green flag is in the ZenoRoom. It is scenery. The description is "A green triangle of fabric attached to a pole jammed into the sand at the northern end of the track. It flaps gently in the wind, making a sound not unlike Archimedes's laughter.". Understand "pole" as the flag.
Instead of listening to the flag, say "The flag sounds like Archimedes laughing, waggling his eyebrows, and going on about geometric series.".
Instead of tasting the green flag, say "It probably tastes like victory, but you can't reach it right now.".

Instead of going when the player is on the starting line or the player is on the track:
	say "You can run in all kinds of directions once you've finished the race. For now focus on getting to the flag, which is [b]north[r] of where you are now.";

Instead of going south when the player is on the track:
	say "That would be very counterproductive. The finish line is to the [b]north[r] of where you are now.";
	
Instead of jumping when the player is on the starting line or the player is on the track:
	say "How about you jump to it and just run this sprint?";
	
Instead of touching something when the player is on the starting line or the player is on the track:
	say "You think about reaching for[if the noun is the player][otherwise if the noun is part of the player][otherwise] the[end if] [noun], but you really need to focus on this sprint for now.";

Instead of taking the flag when the player is on the starting line or the player is on the track, try touching the flag.

Instead of exiting when the player is on the starting line:
	say "The best way to get off the starting line would be to [b]run north[r] down the track."; 

Instead of exiting when the player is on the track:
	say "You can leave when you've finished the race."; 
	
Table of fractional distance descriptions for Zeno
depth				description
0 				"You are at the start line"
1				"You are half-way to the flag"
2				"You are three-quarters of the way to the flag"
3				"You are seven-eighths of the way to the flag"
4				"You are fifteen-sixteenths of the way to the flag"
5				"You are thirty-one thirty-seconds of the way to the flag"
6				"You are sixty-three sixty-fourths of the way to the flag"
7				"You are a hundred and twenty-seven hundred and twenty-eighths of the way to the flag"
8				"You are two hundred and fifty-five two hundred and fifty-sixths of the way to the flag"
9				"You are five hundred and eleven five hundred and twelfths of the way to the flag"

Instead of going north when the player is on the starting line or the player is on the track:
	if the player's command includes "walk":
		say "Races are for running![paragraph break]";
	otherwise:
		increase the runs of the player by 1;
		say "You run furiously and cover half the distance to the flag!";
		now the player is on the track;
