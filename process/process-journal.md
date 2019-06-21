# Initial design and thinking (Monday, 29 April 2019, 14:00PM)

Hi, this is my first entry for this thing (though I wrote a bit about it in a notebook significantly earlier on I think?). In my sketch in my game idea list I wrote

`> There is a boulder here.`

So that's helpful. But actually it does get a little bit at the spirit and what I'd think was funny/interesting about the game. That is, using the language/style/techniques of text adventures to yet again translate the punishment games. To me it's just funny recognising things like "There is a boulder here" as an "equivalent" representation of the graphics of the original game.

It's been a long time since I used Inform 7 (since Kicker to be precise, which was back in... 2012... holy  shit). So I might as well consider myself to have exactly no experience with it. I'll probably  need to do a tutorial to remind myself of the basics again. I'm also wondering if it works on mobile? Does it? Anyway if not then: not. So a key todo is a tutorial.

Beyond that there's the individual levels. And then there's the concept of the menu system.

It seems obvious that everything should have a sort of narrative framing, including the menu system? So that the way everything gets done is via that.

## Puzzles?

Obviously a major feature of text adventures is the idea of puzzles you solve to make progress. So one thing I need to decide is whether that's going to be part of the idea here. One option would be to have a puzzle for each task which, on completion, lets you perform the action, but then the action is reversed as per usual. Alternatively one could have various red herrings that make it seem like adequate completion of the task is possible by solving a puzzle, but then it always turns out it doesn't work.

## No puzzles?

Or is having puzzles just asking for trouble because it would require a ton more labour on my end? I guess it would also potentially distract from the "purity" of form that most of these games have had too - it's not about deception, it's always clear you can't escape/can't make it through the task and so on. Hm.

Probably the right thing to do is just get my hands on Inform 7 and try to build a sense of it and then make decisions from there.

## Content

One thing I'm pretty aware of is the question of how much content there needs to be, how many layers of looking at things, having conversations with people, and so forth. But  that's probably kind of modular? There's going to be a core structure that I can implement minimally  and then from there it will need to get more or less deep.

## "Menu"

Okay so it seems like it's not as fun to just choose which punishment to experience and teleport right into it, rather it feels like there's an opportunity to have the menu be a part of the adventure.

As such, I think we could involve Charon and the River Styx in terms of getting into the game? e.g. maybe you start in front of Charon and have to tell him who you are in order to get transported to your punishment? A simple little conversation, could even be a puzzle if you don't know your options - he could say you're not on "the list" and you have to sneak a peak at his clipboard to find out the options. Once you tell him who you are on you go. (Maybe a multichoice dialog thing instead which fills out with correct options once you look at the clipboard?)

So you you tell him your name and he drops you off at the appropriate punishment spot. Seems reasonable.

## Sisyphus

Clearly

`> There is a boulder here.`

And also

`> push boulder`

And you need to be able to look at, smell, touch, taste etc. the boulder. It should probably be the only thing there.

Do you need instructions from Zeus? Or is it so obvious that you would push the boulder?

Can you walk up the hill without the boulder? Yes I think that would be funny? Except that it's pretty weird because it's like evading your punishment by going on a nice walk? But the actual task is to push the boulder up. So maybe it's still funny because it's the only thing you can "do" in the end.

If you needed instructions how would they work? Probably just a sign? Maybe quite simple, a bit of comedy. Signed by Zeus at the end?

Clearly you push the boulder and it goes uphill for a while until it rolls back down. I like the idea that the hill is multiple parts so you make progress for a while? Like you push the boulder and it goes up the hill to the next room? THen you walk there and it's there. If you do anything except push it, it rolls back down. If you keep pushing you get to the top but then it rolls away. If you run down the hill you see it exit each space as you get there. Har har?

I think that can be quite satisfying. Maybe just three "rooms" worth of hill? Maybe more?

What if you could secretly pick up the boulder and walk up the hill, but even then it just falls out of your pocket at the top and rolls back? Or you try to drop the boulder and it rolls down. There could be a little demarcated spot to leave the boulder with an arrow or something.

## Prometheus

Well I guess obviously Charon (or Zeus?) would have to actually help you into your chains on arrival? Or would you get into them yourself? That would be kind of funny, but really the myth is that you get put in them so maybe that's not so funny. Though there's something hilarious businesslike about the idea that you actively participate in your participant and kind of consent to it? Can try both ways I suppose.

Once you're in you can see the eagle in the distance and it gets closer over a few turns. Then you can

```
> struggle
> writhe
```

and so on. When  you do that the eagle hovers up just like in the game, but it comes back. You lose liver over time (should there be something in the status bar perhaps? Or maybe your liver is in your inventory actually? That would be pretty funny.)

Once your liver is gone night falls for a few turns. Maybe you could sleep at that time? And then repeat. Eagle comes back. Once the eagle arrives you get

`There is an eagle here.`

Whereas while it's coming it's more just that you see it in the distance.

## Tantalus

Well clearly we have

```
> get apple
> take apple
> drink water
> get water
```

And so on, with the object then not allowing you to take it. But also clearly needs

```
There is an apple and a pool of water here.
```

Or similar to assert their presence. Why would you not just leave? I don't think Tantalus is chained up is he? Or is he? Or Sisyphus for that matter. Guess we need some kind of magical boundary. Or alternately you're just in some kind of cave or on an island or whatever so that it simple isn't possible. Or there's just no exit and so it's not something you can do. Should account for things like `leave` and `exit` and so on.

In this one we should totally recreate hunger and thirst messages from some other game. Does Colossal cave have that? Like `You are getting thirsty.` and so on?  

I mean it would be really fun if each game had some more specific reference to an already existing game or trope somehow? But probably too much to ask given my kind of lack of knowledge in this area.

## Danaids

Clearly you need to

```
> get water
> put water in bowl
```

Or whatever? You need some kind of carrying device. And then `put water in bath`. And then it empties. And you can look in the bath and see that it's empty.

Can you drink the water? It's bathwater. Ha ha.

Seems simple enough?

## Zeno

This one is interesting. I guess you could actually create the footrace here? In which case you're racing a tortoise? It sets of, and then you run in the same direction, and then it's perpetually just ahead of you? (This would actually  be a different version of the myth to what I present in the game which is the idea that the finish line is where you're headed. Might be better to stick with remediating my games rather than the myths themselves?)

In which case I guess you want something like

```
> run east
> east
```

Maybe it encourages you to run? But maybe  you don't have to?

Each time you go halfway, so I guess different amounts of time elapse between scenes. Should maintain the distance display? Or maybe just have it say things like you are really really close and so on? It's all in the discussion of how close you are to the finish-line. Almost like you could touch it. (But then maybe you try to touch it and you hand move half-way and then halfway and so on? Hee hee ha ha?)

Sounds okay.

## IFCOMP?

So IFCOMP doesn't really allow me to release the game until October so I think: no. Also just feel like the community probably won't be into it, so I think I don't bother. Sorted.

##  Let's go?

Seems like I have thoughts on how to do it all. So I "just"  need to relearn Inform and then I'll start building? I guess I can do the tutorial in the actual project file so as to run into any bullshit it has planned for me in connection with Git? We'll see;

---

# Updates after beginning with Inform (Tuesday, 30 April 2019, 14:09PM)

Okay well I did dig into some work in Inform 7. Did read through documentation, started an Inform project to actually begin building, made some headway, and ran into some walls too.

Key learning: Inform is pretty straightforward at the most basic level of rooms, items, people, all with descriptions. All fine, no problem. As soon as there's the slightest subtlety or anything, though, it becomes really quite difficult. Spent a lot of time trying to get a "talk to" command to work so you could `> talk to charon` and never did make it work. It's undoubtedly possible, but it was very hard. More broadly, even the most simple "conversational" stuff I want to do with Charon is hard and I have no idea how to do it. So that's a big hurdle.

I guess a lot of the nicety stuff is just going to be hard, whether that's getting coverage of weird things that might get typed or offering different default messages or what have you. I _should_ just ignore it and plow through to get the basic game working, but it's hard to let things go.

In many ways it doesn't have to be hard, I guess the big fear with any interpreted game is just that the player will get stranded and not know what to do. That said, all the things are very, very  simple, so maybe not so hard?

Here's a revisit of what I need to do now I've at least touched Inform. I'll just do Charon and Sisyphus because if I can get them both to work I've got a skeleton playthrough. It may be worth testing early.

## Charon (aka the menu system)

On the banks of the Styx. Charon is there with his ferry. You have a coin (ideally in your mouth). You need to read the list of names on his clipboard and then tell him you're one of those people and give him the coin. Then you get into his boat and he transfers you to your punishment. I guess that can be pretty much instantaneous.

So the key tricks here are:
- Conversation with Charon, specifically how to tell him your name (should this be "say Sisyphus" or should it be multiple choice? Or something else?) then give him the coin then get into the boat. And preventing other stuff - no getting into the boat before telling him your name and giving the coin. Can't tell him your name with a coin in your mouth. Can tell and give in either order? Or maybe force tell then give? Probably.
- Moving to a new room once in the boat. It's a vehicle so should be able to transition to the new place? May need different descriptions of the boat depending on the player's vantage point (in it or not).

## Sisyphus

A scene at the foot of a hill. There's nowhere else to go. Could be surrounded by water. Maybe you've forgotten how to swim? Ha ha? There's a boulder. There might be a sign or a letter from Zeus that Charon gives to you as you get off the boat. It explains you need to push the boulder to the top of the hill. Do that and you can leave. So then you can push the boulder. It moves between, let's say, three or four rooms leading to the top of the hill, then rolls down.

Doesn't feel like there's a bit trick, but obviously I need to understand
- Pushing something between rooms, I think there's the idea of something pushable
- Automatic rolling back in response to no pushing or reaching the top, turn based rolling

Might want that idea you can mysteriously pick the boulder up and put it in your pocket. What are you wearing? And it falls out when you get it to the top etc.

## So?

Ugh. There's no obvious way to just think/design my way out of this. The majority of my problems are simply about not understanding how to express ideas in Inform at the level of syntax and at the language level and at the conceptual level. Oh boy. Oh boy. This is tough. It's probably a  great life lesson about the power of working in systems that you already understand and thus can express yourself in without running into low level operational issues. Reminds me somewhat of activity theory right now. I'm stuck at the level of operations and they're not very interesting to think about?

## Do you guys like anything?

Sounds grim. However, I do think there are interesting things about all of this. Most notably I think the way that Inform 7 is so focused on the idea of building a coherent world is a very interesting and different way of representing the ideas in this game. To take a simple example I noticed while reading the documentation, the fact that I can make the apple in Tantalus `edible` is really interesting to me - such that it has an ontological status despite the fact I'll obviously prevent the player from taking and therefore being able to eat it.

It's funny that there's this extreme "physicality" involved in this totally text-based world. That there's a bunch of simulation that goes on under the hood and it perhaps adds to the authenticity of the whole thing, which I think relates favourably to the overall project.

Something to continue thinking about anyway.

---

# Right now, skipping ahead, the ad hoc life, happy times, and now... (Thursday, 6 June 2019, 9:09AM)

## Right now

So at this point I think I've implemented a lot of the bank of the Styx. Notably you are there with Charon, you have a coin in your mouth, you need to look at the clipboard to work out who you can be (the menu system effectively), and then talk to Charon to choose an identity, then pay him the coin, then get in the boat. That's the majority of the sequence, with the "last thing" being to move the boat to a new location for Sisyphus's punishment.

## Skipping ahead

This morning I thought it would make sense to provide a "skip ahead" cheat for players once they've gone through the opening "puzzle" once to just type the name they want and to teleport to the punishment. Think I can do that.

## The Ad Hoc Life with Inform 7

The experience of using Inform 7 has definitely been a major challenge on multiple fronts, notably:

- I find that I don't write to-dos because I don't quite know how to phrase units of work in this environment - quite a weird experience actually, since to-dos are usually really important to me. Here, I'm just totally unclear on what counts as a unit of work. Or at least I'm scrambling so much it doesn't feel valuable to pretend I'm super organized about it?

- I don't quite think through design in as detailed a way - same sort of issue I guess. When you don't quite know what's possible it starts being more of a response to the tool within the parameters of your broader ideas? So I have the broad strokes, but I'm kind of relying on Inform 7 to suggest ways of getting things done (as well as my hazy thoughts about how IF works as well, e.g. puzzles)

## Happy times with Inform 7

A lot of the above can be cast as positive experiences for me. Being a fish out of water means that I'm forced to engage in a pretty detailed way with the technology. As I said earlier, there's a sense of being at the "bottom" of the activity theory division of operations/actions/activities here. Each syntax errors drops me to operations, and then occasionally I'm fluent enough with the syntax that I get to take actions toward goals. Definitely not feeling like a holistic activity though, not integrated, plenty of contradictions. It doesn't _feel_ good, but I think it's likely making me think in different ways.

Because Inform 7 is just such a different representation, and that's a lot of fun. The "infinite possibilities" of text combined with its underlying ontology means you end up with a decent amount of guidance on how to do things (I'm not fighting the system here), while still being pretty free to use it in aid of what you're doing.

So it's constraining, but nice. It pushes me to think about objects, possession, containers, conversations, etc. Many of which I don't ever think about because most of what I do is much more locked together and less systemic. So the comparison to previous "standard" editions of this game should be quite fruitful I think... much more of an "world" than the others.

## And now...

And now I want to get from Charon to Sisyphus and start Sisyphus. Things are getting easier I think. Some of the basic formulas are coming together for me. I believe I might be able to get something shaky together over today?

---

# Sisyphus rolls, Vorple, Exit, Next steps... (Thursday, 6 June 2019, 15:30PM)

## Sisyphus rolls

I've done what I think is the basic structural work required to make Sisyphus work now. You can push the boulder uphill and if you stop pushing (by doing something else, say) it will roll back down. Also if you reach the top of the hill with the boulder it will roll back down on its own. Also you can walk to the top of the hill without the boulder.

That's about all there needs to be right? It's not meant to be a complicated sort of thing? And the rest revolves more around flavour? Smelling the boulder etc.? But not too much flavour because I suspect the more flavoursome the more irritating repeat readings are? This is all pushing into areas of writing fiction that I suppose I'm deeply out of practice with (though I used to fancy myself for this kind of thing).

## Vorple

I read about a more flexible interpreter that might allow some CSS magic and which I'm thus inclined to try just to have a bit of control over how things look. There is some cachet/fun in just having a super bland default, but I do think I might at least like the option?

## Exit

I just realised it's weird if you can restart? Or is that okay? Similar to reloading the page. At the very least it's not saying you escape from the punishment, it's a total reset of the whole system right?

## Next steps...

I think it's probably semi-smart to flesh out Sisyphus next, make sure it holds together well and that it has the right level of entertainment, etc. And then to test it out with a couple of people (e.g. Rilla, my parents) to make sure it's possible to actually get through all this stuff? Basically I'd like a throughline from Charon to Sisyphus that would feel roughly "final" to see how the whole thing lands.

Fleshing out would include identifying all the default verbs in Inform 7 and giving them some flavour I suppose? A light sprinkling of paprika?

---

# IF Cultural Feedback, What if they don't push, Familiarity breeds todos, Next (Monday, 10 June 2019, 9:42AM)

## IF Cultural Feedback from Simon Christiansen

At this point I now have a (relatively) polished version of Charon + Sisyphus scenes. I sent the initial version to Simon Christiansen (one of my favourite IF writers - e.g. PataNoir) who kindly looked at it and gave me some of the wisdom of the IF community. I wrote the key takeaways down in the list of todos but I'll repeat them here:

- Always have a description for `x me`
- Always have items for all first-level nouns (e.g. things mentioned in descriptions)
- Consider having descriptions for second-level nouns (mentioned in the first-level descriptions, etc.)
- In outdoor areas think about the visibility of distant objects/scenery

(He also found my "long drink of stagnant water" description of Charon to be confusing, maybe a cultural thing or maybe just a horrible attempt at a play on a long drink of water.)

It's so helpful to be able to find out about conventions like this, and it's an interesting case for me of genuinely _wanting_ to know about and implement standard elements. Part of me wants to say this is because I'm so edgy and only care about pushing against the boundaries, but the reality is that it's important to be able to put together a convincing version of whatever you're making, even if it's ultimately about making something that with contradict the principles of that genre. For previous games I've been working with forms that I suppose I'm just better informed about (retro-style games, Sierra games, UI design, etc.) and so have implicitly known the kinds of things that mean they hold together properly even as they controvert various things. For IF I simply don't know enough, so it's nice to have some basic rules to follow.

## What if they don't push?

One thing I started to wonder about with Sisyphus is whether it's wrong to allow the player to opt out. Technically you could just wander around indefinitely without pushing the boulder, which is maybe not what the game is meant to be about.

It's not really clear from the myth why Sisyphus does actually push the boulder up the hill? When you see or read portrayals of this, it's just that he's kind of "sentenced" to do it, but there's never any obvious compulsion beyond that? Is it just that he accepts his punishment? Does the word of Zeus mean he can't help but push the boulder? Per Camus, does he just want to push the boulder?

In my previous iterations it's always been a binary situation where the only "real" action in the world is to do the punishing action (e.g. track-and-field the keys or slide the slider), and so opting out looks more like just not playing. In the IF version you can both not push the boulder and kind of wander around.

One response to the freedom issue in this iteration is just to say that this kind of freedom is no neglibible that at some point you'd end up pushing the boulder just to feel like you're accomplishing something.

Another response is to incentivise the punishment (maybe Zeus is implying if Sisyphus is a good guy and does it long enough he gets out or something?). I could give the player a point every time the boulder reaches the top of the hill? That might be pretty funny.

A final response would be to get cute with it and kind of force the issue, having the player suddenly teleport back to the boulder with an implication that they find themselves in position to begin pushing. Maybe eventually even automate their pushing.

I think there's comedy value to that option, and it would be the most intricate to implement, but thinking about it right now I think that the points system is the most nicely balanced. It's an "incentive" in this really trivial bullshitty way that games lead us to do all kinds of Sisyphean tasks after all, so it's fitting that it would be the thing here. In the original game, of course I assigned "failure" points because I was really trying to ram home the sadism of the experience. But here I think it would be legitimate to genuinely award points, even with the standard notification. I think there's something to that.

## Familiarity breeds todos

I notice that as I'm becoming more comfortable with Inform 7 it's proving more possible to think in terms of units of work/design/implementation for the project. Where previously it was a big mess where I just didn't feel like I could predict what would be doable, now it feels like there are specific tasks I can put into practice. Even different forms of work, from implementing things at the level of logic, to fleshing out descriptions, to writing first-order descriptions, and so forth. Good.

## Next

Couple of tweaks to Sisyphus and then I think it's reasonable to start writing the next one. Prometheus seems like a fun challenge.

---

# Designing Prometheus (Monday, 10 June 2019, 10:28AM)

After my claims of comfort and ease with Inform 7 how about I try to think through how I would put together the Prometheus section?

So the big things are

- The player needs to be chained down to the rock. Clearly we can implement a system where if the player is chained then they can't do anything other than struggle and look. BUT how the heck do they get into the chains? Should it be voluntary? It's not in the myth, it's clearly something that is done _to_ him. Should stick around to help you into your chains? Perhaps so.

- The eagle needs to come and go on a schedule. I know something about scheduling from the Charon stuff with the ferry, but the eagle would be more complex than that. In particular it should only start to arrive when the player is chained (fine if Charon does it as a part of his exit message). It should take some number of turns to get to the player (3? 4?) then land. If the player thrashes it needs to hover for a couple of turns (or a random number?) then land again. When the liver drops to zero it should leave.

- Need a struggle/thrash/writhe command. Hint those by denying all other commands by saying all you can do is x? Could also just allow the player to thrash when they try to do anything physical while chained? Like if you try to move in a direction you writhe in place instead, and it dislodges the eagle. "try writhing instead", ha ha.

- Representing the remaining liver could be done in a couple of ways. It might be funny for the liver to be in your inventory, but it makes almost no sense. You could also look at it (with the liver being a part of the player). Maybe you can crane your neck and see and make a guesstimate of how much is left which will turn out to be correct. Could also have the "points" system be a representation of the liver in the status bar for this level. Makes sense too. Maybe bother.

- When the liver is at zero night should fall which would mean changing the room description. And scheduling the eagle's return and the liver's regeneration. Maybe some "feelings" as the liver comes back? Or instantaneous?

Okay well I guess that's actually kind of it? Have a go?

---

# User flailing, Prometheus and flavour texts, Tantalus and the unattainable edible apple, Tantalus design thinking (Tuesday, 11 June 2019, 10:01AM)

## User flailing

My mother tried out the version I created with a Charon and Sisyphus slice of the game. It did not go well. Other than somehow mysteriously finding the note from Zeus despite never intentionally leaving the starting level, she fell at the first hurdle and couldn't get the coin out of her mouth. Looking at the transcript is pretty instructive in terms of a vision of how a person might react to being told there's something in their mouth. `spit` was the first reaction which is great and should work. `open mouth` was never even close, and points out that the reason `open mouth` seems "obvious" is more to do with IF culture and particularly with the idea of seeing things as "containers" such that if something is in something else you always `open` it to get at it, despite the fact this isn't always very natural language, perhaps particularly for bodies?

I'm not totally sure what to do with it as I do think my mother's probably not the target audience, but the idea of people flailing around in the opening area and never making it onto the ferry is dispiriting for sure. I think I definitely need a 'help' command that could at least profile the sorts of commands you can expect to use in the game (OPEN, UP, PUSH, GIVE, TALK TO, LOOK, LOOK AT, etc.). That would give some direction - the game isn't remotely about parser fighting.

So I think for now a `help` is the way to go and then just hope for the best? I think you have to assume some level of willing enculturation into IF world to play these things, rather than providing every plausible verb?

Also the coin could fall out when you go to talk to Charon? That would also be amusing, though then no longer remotely a puzzle and more like a flavour? I think that would be okay.

## Prometheus and flavour texts

I implemented pretty much exactly what I wrote about above and it was pretty much as straightforward as I could hope for. It feels somehow more bland than Sisyphus did, I suppose just because there's literally nothing you're really doing as a player? The most obvious thing would be to add a bunch of stuff to look at. So you can kill time. The main thing you can look at would be the eagle and the rock, and then the scenery which might include the river and the beach.

It's weird thinking about this whole flavour text thing - I clearly have a drive to make the experience "interesting" in a way that has never been a priority in the other forms at all, they've always had their one trick/idea and then that's that, you don't get finer details or things to think about beyond the main proposition. In IF it feels like you can't do that, like the most basic simulation would effectively not be a use of the form at all, and so you need to lean into the writing at least a bit.

That feels necessary for Prometheus to be complete.

## Tantalus and the unattainable edible apple

I feel inclined to move to Tantalus next just because it's been vaguely in my mind in terms of the whole idea of an edible unattainable object being quite nicely expressible in Inform 7. I really like the idea that the apple _is edible_ despite the fact you cannot eat it. This feels really distinct from the games prior to this where the apple is effectively a red square and either is or is not included in an animation sequence representing you getting it, as such there's no reasonable sense in which that apply is edible. (If I'd thought more deeply about these facets of the game I might have though to have an animation of eating the apply but make it impossible to trigger, effectively what I'll be doing here. But this is the thing that Inform 7 bring to the table in a lot of ways right? Thinking about the properties of objects rather than just the representations and actions.)

As such I think that's next.

## Tantalus design thinking

So what do we need for Tantalus?

- Well the thing that weirds me out right now is the question of why he stays standing in the pool of water? What do online sources have to say about this? Here's quote from the Odyssey via https://www.ancient.eu/Tantalus/

> I also saw the awful agonies that Tantalus has to bear. The old man was standing in a pool of water which nearly reached his chin, and his thirst drove him to unceasing efforts; but he could never reach the water to drink it. For whenever he stooped in his eagerness to drink, it disappeared. The pool was swallowed up, and all there was at his feet was the dark earth, which some mysterious power had drained dry. Trees spread their foliage high over the pool and dangled fruits above his head – pear-trees and pomegranates, apple-trees with their glossy burden, sweet figs and luxuriant olives. But whenever the old man made to grasp them in his hands, the wind would toss them up towards the shadowy clouds. (Odyssey, 11:582-593)

- So basically Tantalus stands in the pool because he has to stand in the pool, he might as well be chained there, he is _compelled_ by the will of the gods, etc. As such in the IF version there can simply be no exit - could consider explaining it when the movement fails (e.g. you don't feel like it, or you feel you shouldn't) or could consider just a literal "You can't go that way" default response which is kind of apropos and I do like leveraging the materials to hand.

- Given he's in a pool we'll need a similar thing to Prometheus with Charon guiding the player to the pool I suppose to get them situated in the place they cannot leave. The tree can just be on the beach, so seen from the boat. On getting out you end up in the pool and that's that.

- Note that in the Odyssey the water is up to the chin which is higher than in my games previously (to the waist). I suppose I can go with the imagery from my game rather than the Odyssey? Interesting question though because I really went with certain choices in part because of graphical limitations which I don't have in this form. There's only one apple originally just to be graphically clear, but there's no reason there couldn't be many now. _That_ said, I do think the conceptual clarity given by the single apple is probably appropriate here too? You know what you're mean to try to do.

- I like the detail that the wind blows with the branch out of the way, that can be included.

- Most basically: you're trying `get apple` and `eat apple` and `get water` and `drink water` repeatedly and they never work. Beyond that you can look around and perhaps try things like jumping and climbing the tree.

- Details include the tree, the apple, the water, maybe a note carved on the tree lolling at you, the beach, the river, ...

It doesn't seem overly complex, feels like I can get this one done today?

---

# (Tuesday, 11 June 2019, 14:30PM)

## Tantalus-ed

So Tantalus is largely implemented and is pretty satisfying. I still need to make it more fun and interesting, but that mostly involves writing stuff and finding ways to include more detail and depth in the whole thing which I believe I can do in a different pass (that would also help with consistency of writing potentially).

## Zeno?

Zeno seems like a weird one to do well. How would you create this kind of impossible space in a way that feels relatively true to the way that Inform 7 works?

- You could have a series of rooms of course, culminating in a looping set of "nearly there" kinds of things.
- For one thing it seems fair to express distances linguistically rather than numerically, which frees me up from floating point precision.
- Another way to display distance/proximity to the flag would be in the room title parenthetical? This would be an "enclosure preoposition" which is kiiiind of weird and wrong? But maybe you could vary the text in there as a way of indicating it. The iffiness would come from the representation below being that you're... in the flag? On the flag? All these things are bad. Oh but maybe there could be a track, you could be on the track, that would be fair. So you're "half-way along" the track and then "three quarters of the way along" and on until we break down into poetic descriptions of tiny distances?

All of this would be controlled by saying something like `run north` I suppose?

What if they want to then `run south`? You'd be trapped in the same scenario right? Except you'd be running back to the start line. So would I have `A stony beach (running toward the start line, half-way along the track)`? That won't work because "the track" is a single big thing, so if you reverse could you would get half-way to your destination but not half-way along the track. It would be much easier if you could just arbitrarily set a parenthetical text.

- So failing that room title parenthetical the other option is to just do it in the room description itself, with it telling you how close you are to the flag. Has the same issues around running in a different direction, so perhaps the sensible thing is to demand that the player runs to the flag first and foremost and then they could hypothetically run wherever they want after they've finished the race?
- Maybe we can at least have "at the start position" and "on the track" at the top, they can both be supporters.

There are shades of Alice in Wonderland here it feels like, or rather Through the Looking Glass I think? Where they're running furiously just to stay still.

> Now, here, you see, it takes all the running you can do, to keep in the same place. If you want to get somewhere else, you must run at least twice as fast as that!

And as per usual I suppose it's good to have a few things to look at, ideally including a lol somewhere in there (this one from Archimedes).

I mean, I think there's enough to try and do this. Probably I need a table of description inserts to describe the proximity to the flag. Maybe a number tracking how many times they've run that way, and at a certain max it just randomises "nearly theres".

I'll try it out.

---

# Zeno-ed, IF niche, Danaid? (Wednesday, 12 June 2019, 13:55PM)

## Zeno-ed

So Zeno is "done" now. It feels pretty bare bones, and each subsequent level feels less exciting to some extent as I get more and more used to writing things in Inform 7's weird language, you start to develop a kind of blindness to the workings of the tool the more comfortable you are with it (this is the whole operations > actions > activities thing happening live in this process). As such these things are feeling slightly bland. That said, I think a lot of that is also because I'm focusing on getting the core mechanical aspects working properly before I try to make the game entertaining. (Not to mention that game isn't really ever going to be that entertaining anyway. It's punishment, right?)

## IF niche

Have definitely been thinking and worrying about the potetially extremely niche nature of this project. Somehow it seems more niche than chess to me, I guess just because at least most people know what chess is and have some faint understanding of its objectives, hopefully enough to get the jokes in that game. With IF it's like a whole other world that demands really different skills and thinkings from activities people are comfortable with.

This has had me revisiting the idea of delaying the release of this game to coincide with IFCOMP instead at least as a way to get some insiders to play it. I fear that otherwise maybe nobody will play it? On the other hand, delaying sucks I hate delaying.

## Danaid?

The final level to put together is for the Danaid. Some design-ish observations:

- There's whole thing of which Danaid you are, maybe I can make something of which of the 49 you are? At least just assign a random one to the player at some point? Or maybe just not bother being cute when it won't impact the play?

- This one involves some reasonable "serious" manipulation of stuff in the game, notably multiple receptacles to move water from one place to another, with it draining out on a timer. It's probably not _that_ complicated in reality, but it seems lightly daunting. Not least because I don't have a super clear vision of how to present it (maybe sticking with the earlier game depiction is smarter - a fountain/faucet, a container, a bath)

- Again has the opportunity to have "true"(ish) underpinnings in terms of substances in containers moving around

- Only seems to need the one room

- Should be able to get into the bath etc. for hilarious non-bathing messages

- I guess this is the least clear of all the punihsments now I think about it? How are you supposed to intuit that you need to get water and put it in the bath and then bathe? That's a lot to take in. But I haven't had instructions to this point. Maybe you're just told to take a bath (Charon) and from there the various failure methods will do the job to guide you toward your futile task (e.g. there's no water in the bath to start with).

- Looking on line there's basically no evidence that the Danaids are trying to bathe! Yikes, where did that come from then? Instead it's just that they're meant to fill a vessel that has holes. Jugs to fill a basin apparently. That's it. Maybe there can even just be a note on the basic "Fill me. Lol. Zeus"? Heh. And then there's just a jug and a water source handy.

- A HHGTTG babelfish joke is plausible if someone tries to do anything to the holes in the basic?

I think I can proceed with this.

---

# Skeleton exists, help needed, editing (Friday, 14 June 2019, 19:18PM)

## Skeleton exists

Perhaps it's too modest to say it's a skeleton, but I have essentially a working throughline for all scenes in the game that work and do what I think I want them to do. It's been a hell of a hard time getting to understand Inform, and the more I use it the more clear it is to me that there are much, much cleaner and better ways to use it to the effect I want - but I just don't think I want to invest the energy required to achieve a more impressive mastery? Do I want to make any more text adventures? It's possible I do of course, but gee it's really pretty hard stuff.

## Help needed

Really the next thing is fleshing out the world with first and second order nouns everywhere, checking for stupid behaviours (especially with any new actions I've introduced), ideally having all special actions just translate back to standard actions. And adding much more help and facilitation with hints, bolding of important objects and verbs, and probably automating certain things where reasonable to avoid as much interpreter guessing as possible.

I think there are probably interesting questions around agency here. The more hinting there is the more it may end up feeling more like a Twine? But I think so long as the main throughline is super easy to follow but there are nice asides if people want to take the time, we're good?

## Editing

In the end I think it feels like this is perhaps closer to finishing than I'd quite imagined, particularly now that I'm more "editing" than creating. Should be less resistant to change hopefully.

(I'm reminded I should make a Twine version of this game.)

---

# Rambling about almost being done (Wednesday, 19 June 2019, 16:23PM)

Have added a bunch of niceties today after a longish feeling gap (actually only two working days, but you know). It's getting close to something that's probably releasable? How will I know when it's done? Remaining things are mostly around making a few things more consistent and generally adding greater depths of description as a way of making the whole thing more "fractal" and thus more sustaining even while the frame is utterly repetitive. If I do a serious push on this tomorrow morning maybe I'll have something I could consider finished? I send it to Simon and my parents again maybe?

I don't know.

---

# Wrapping up (Friday, 21 June 2019, 14:29PM)

Alright well after yet more tweaking and adding of little bits and pieces I've sent the game again to Simon Christiansen in the hopes of getting some solid experienced feedback on the thing as it stands.

There's a tension between trying to make it a "good" IF with lots of descriptions and information and so on - versus keeping it kind of stark and thus more in keeping with the nature of the punishments.

You might think it's obvious that I should be making it as much like IF as possible, and thus full of rich detail. But part of my thinking about this series of games has always been that the play experience should mirror at some significant level the actual punishment itself, and so should be repetitive and ultimately unrewarding. As such, the IF version needs to keep that in mind and so I think I'm kind of walking something of a balance between the two ideas?

I think I'm fairly happy with it. Jim and Mary still get totally lost in it, it's really hard to design an IF that's playable by people who never play IF and don;t play games more generally, but I'm having a go.
