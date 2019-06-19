# v1 (Friday, 7 June 2019, 12:35PM)

I'm writing this after having struggled with Inform 7 for a while in order to put together a basic menu system (Charon and his ferry) and the Sisyphus scene of the game. So this is not really pre-development hypothesizing, but them's the break.

## Translation across media: Using Inform 7

Boring, but yes this once again fits into my ongoing interest in what happens when you take a game design or "game" and try to remake it in a different technology. The original punishment games are in the style of track-and-field retro games. This one presents them as a text adventure.

It's already clear that this leads to really different ways of thinking about the games despite the ultimate goal of presenting the same "story":

### Narrative menu

The menu system turned out to be weirdly important in that I quickly ended up feeling like it needed to be as narrative as the rest of the game so had to come up with an actual scene rather than just buttons or selections, hence Charon and his ferry. There's something interesting about going from a list of five options to this quite fleshed-out version of a "menu".

### Text-adventure culture

The call of the text-adventure has a bunch of conventions in my mind that I can't help but want to adhere to culturally. So I have a couple of things that look very faintly like puzzles (the coin in the mouth, stealing a look at the clipboard), because text adventures have that - you want a bit of indirection as you go along I suppose. Likewise I've found that it seems necessary to have little points of interest in the world for the player to look at so it's not just totally functional - a narrative version invites that kind of telling.

### Inform 7 ontology

The ontology of Inform 7 has a genuine impact on how it feels to implement all this stuff as well. Inform 7 literally works in terms of objects, vehicles, things that open and close, walking places, getting into things, carrying things, giving things, and so on. All of these are built in and can be used to compose your experience and lend a kind of creedence and scope to the world that isn't there in previous versions of this game. There's more of a sense of being there, I think, than previously.

## Sequels: A body of evidence

Of course we have the building experiment of making the "same game" over and over. This is the ninth version of the game I've made so we have this kind of body of evidence accumulating about what different approaches to design and implementation have on a more or less constant base.

Part of this involves me asking myself the question of whether I'm trying to make games out of the original myths or whether I'm trying to make games out of the original game from 2011. I often flip flop around on this, usually landing on the idea that I'm trying to make a new game "in the spirit of" the creation of the first one. As such I don't need to make a game that mimicks the first game's qualities, but rather possesses the same kinds of connections to the original, perhaps the same tone etc. too.

At some point I suppose some larger study could be done of all of the games to make some sort of case or set of observations about game design.

---

# v2 (Wednesday, 19 June 2019, 15:45PM)

Having now built a reasonably complete version of the entire game, I feel like I can weigh in again on where I think the interesting parts of this have been.

## Hello, Hades

That is, as above the fact that Inform 7 is about explicitly modeling a world for the player to exist and act in is very, very different to prior editions of this series and has had me thinking correspondingly differently about what's important and what it means to represent things.

The most obvious edge of this comes when I'm using specific underlying constructs (whether that's vehicles or containers or edibles or whathaveyous) to represent the key aspects of the "story" of the punishment. And then more particular still has been the distinct pleasure of pairing these specifics of the engine with the key aspect of the punishment. Such that the apple is edible but not gettable. Or the boulder is pushable. Or the water really goes into the jug then the basin then out again.

As a corollary, it means it's kind of disappointing when this isn't happening. e.g. the representation of the liver is just a set of percentages. The running track in Zeno just "says" you in a particular position on it. The water doesn't really pass through the holes and it teleports back to the fountain which is pretty weird.

Most importantly, it's this aspect of the project that really has me thinking seriously about the world of the punishments and the question of "realistic" or "authentic" programming underlying things. Notably the edible apple is powerful I think. It's not unlike the idea that Best Chess is really solving chess, despite it being pointless/unfinishable. It feels meaningful (to me) that the underlying representation is of a world where you "could" in some sense eat the apple, it's just that it doesn't work out for you. I suppose it's just as artificial as the apple not being edible at all in the first place, or not even "existing", but still. But still.

## Hello, IF

The other big thing, also already mentioned, is the way in which this project has drawn me into trying to pay attention to and mirror various cultural forms from IF. I'm making an effort to write in what I take to be a kind of chipper IF tone (I don't know why I think this particularly authentic, but I do). Likewise I'm attentive to rules that exist in this community (and thus was able to ask Simon Christiansen for help with them) and want to live up to them to the extent it's practical for me.

This raises questions around the culture of a specific tool. Not all tools necessarily have this I suppose, some are so of course so generic that this sort of thing doesn't build up, but Inform is one. Twine (which I'm thinking of for the next project) is another one.

Part of the question then becomes whether I'm trying to remediate the punishments into the _platform_ or the _culture_? Am I trying to use the tool itself in a way that fundamentally meshes with these punishments (e.g. the edible apple) or is it more important to tell the punishments "in the style of" a text adventure? Naturally there's tons and tons of cross-over between the two ideas and they effectively codefine each other, but there's still some kind of decision to be made. Perhaps it can be put this way: should I look at the tool "my way" and extrapolate how I would use it to tell this story, or should I look at the form more broadly and try to fit in with it?

The answer is probably some boring variant of both, but I think it's a good distinction to be thinking about.

## Hello? IF?

An extension of the IF culture question concerns how people will eventually encounter this work. In particular I've definitely found myself fretting about how legible it is to outsiders (my parents struggles mightily with early versions) and how lame/awkward/incomplete it may appear to insiders (I remember Kicker not going over all that spectacularly).

This is kind of expressed best in terms of how to release the game, for which I currently have three options

- _Just release it the way I always do_. This is easy and natural. It will also be the least likely to get the game in front of people who actually appreciate IF and so I'd be missing out on potentially important and interesting engagement. The kind of lame reason I lean this way is also just because I like to have things coming out regularly and if I don't release this game soon I probably won't release anything for June.
- _Submit to IFCOMP_. The main place I suppose you're likely to get IF people paying attention is at this competition, because as I understand it there's an agreement that people will play and review/rate each others's games. Naturally I wouldn't do well at such a competition, but it might be some guarantee of feedback and response from a highly literate crowd?
- _Submit to Sub-Q_. This is an online literary magazine for IF (and the like). This would be the same idea of getting it in front of a literate crowd. It's a "risk" in that they could just reject it. But they might reject it with helpful feedback. There's something appealing and interesting about putting a game forward in this way, it's not something I've ever done. The response time is up to 60 days though which is grim in terms of my preferences for fast movement.

Extra point: the IF crowd route is slightly awkward because I don't think the fact this is a retelling of a game I've retold 8 other times is really going to come through and that's at least part of the gag here.
