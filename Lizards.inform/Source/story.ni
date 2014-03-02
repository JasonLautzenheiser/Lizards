"Lizards" by Jason Lautzenheiser

Book - Setup

Chapter - When Play Begins

When play begins:
	say "You've been walking for what seems like hours... or maybe days...or who knows, it could have just been minutes.  You only remember as far back as walking along this corridor.  Nothing else has existed in your mind prior to the corridor and you can only think of moving forward.  As you peer over your shoulder there is nothing to see.  The darkness seems to encroach your location at every step, yet the way ahead is lit by some unseen light.   The corridor is your existence....."

Chapter - Attributes

Section - Blind

A person can be blinded.   A person is usually not blinded.
instead of going when the player is blinded:
	say "You can barely see, you best not move until your eyes adjust."

at the time when the player can see:
	say "Your eyes slowly adjust to the light and you can better make out your surroundings now.";
	now the player is not blinded.

Section - Hidden

A person can be hidden.  A person is usually not hidden.

Section - Named

A person can be named.  A person is usually not named.

Book - People

Chapter - Rutherford the Brave

Rutherford the Brave is a person.  Rutherford the Brave is in the entrance.  Rutherford the Brave is hidden.  Rutherford the Brave is undescribed.  The printed name of Rutherford the Brave is "the knight".

Understand "knight/man" as Rutherford the Brave.

Book - Rooms

Chapter - Corridor

The corridor is a room.  The printed name of corridor is "The Corridor". The description of corridor is "An ancient corridor overgrown with brush and vines.  Dimly lit, you can see to the north the dim outline of an exit that you thought would never come.   Back to the south, the corridor fades into darkness."
	
report going north from the corridor for the first time:
	now the player is blinded;
	now rutherford the brave is not hidden;
	The player can see in 4 turns from now.

[The player starts the game here]
The player is in the corridor

Chapter - Entrance

The entrance is a room.   The entrance is north of the corridor. The printed name of entrance is "The Entrance".  The description of the entrance is "You are standing at the entrance of the corridor.  [if the player is blinded]You've been the corridor for what seems like a lifetime and the light is blinding.  You can only make out dim shapes[otherwise]Looking out the entrance you see a path leading into a small village[end if]. [if the player is not blinded and rutherford the brave is in the entrance]You notice a man dressed in the armor of a knight leaning on corridor wall.  He blends in so well with the wall, he is hard to see.[end if]"

Rule for listing nondescript items of the entrance while the player is blinded:
	say "Vague shapes can be seen here and there as you try to adjust to the lighting."
	
Chapter - Pathway

The pathway is a room.  The pathway is north of the entrance.  The description of the pathway is "You are standing on the cobblestone pathway to the small village of Prussia which lies to your east."

Before going east in the pathway:
	if rutherford the brave is in the pathway:
		try rutherford the brave trying going east.

Chapter - Streets of Prussia

The Streets of Prussia is a room.  The streets of prussia is east of the pathway.  The description of streets of prussia is "You are walking along the streets of Prussia, a small medieval village."

Chapter - Forest

The forest is a room.  The forest is north of the streets of prussia.  The description of the forest is "The dark forest presses in on from all sides with just a hint of the way you came from the south."



Book - Regions

The corridor-region is a region.  The entrance and the corridor are in corridor-region.

Instead of going south in the corridor-region:
	say "The way back is no more, your only choice is forward."

Instead of going nowhere in the corridor-region:
	if the player is blinded:
		say "You stumble around and feel the overgrown walls.";
	otherwise:
		say "You can't move through the walls."


Book - Scenes

Chapter - Meet Rutherford for First Time

Meeting Rutherford is a scene.  Meeting Rutherford begins when the player is not blinded and the location is the entrance.
Meeting Rutherford ends when the time since Meeting Rutherford began is 3 minutes.

When meeting rutherford ends:
	try rutherford the brave trying going north;
	
When meeting rutherford begins:
	say "As your eyes adjust to the light, you notice movement along the wall just inside the entrance.  You see a man in armor leaning against the wall.";
	now rutherford the brave is described.

Instead of going during meeting rutherford:
	say "The knight is blocking your way."
	
Every turn during Meeting Rutherford: 
	repeat through Table of Meeting Rutherford Text: 
		say "[output entry][paragraph break]"; 
		blank out the whole row; 
		make no decision.	
		
Table of Meeting Rutherford Text
output 
"'I[']m on my way to see the king.'" 
"'You can follow along if you'd like.'"

Chapter - Enter Streets of Prussia

Entering town is a scene.  Entering town begins when the location is the streets of prussia for the first time.
Entering town ends when the time since entering town began is 4 minutes.

When entering town  begins:
	say "You follow the knight into the streets of Prussia.  The cobblestone streets are empty of any others, though you notice a few shutters on nearby shops closing quickly as the two of you enter the village."
	
When entering town ends:
	try rutherford the brave trying going north;
	say "You feel like you have no other choice but to follow the knight into the dark woods.";
	try going north.
	
Instead of going during entering town:
		say "As you begin to move past the knight, despite being lost in thought, he moves blocking your path."
		
Every turn during entering town:
	repeat through Table of Entering Prussia:
		say "[output entry][paragraph break]";
		blank out the whole row;
		make no decision.
		
Table of Entering Prussia
output
"You see a young child peeking around a nearby house to the south."
"A large bug runs along the cobblestone and crosses in front of the knight.  Without looking down he moves to crush it as it scurries underneath his boot heel."
"The knight peers around from side to side as if looking for something."
"'There is a place we should go, ' and he quickly moves between two houses to the north and into the forest beyond."