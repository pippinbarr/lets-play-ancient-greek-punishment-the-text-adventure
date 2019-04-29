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
