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

Rutherford the Brave is a person.  Rutherford the Brave is in the entrance.  Rutherford the Brave is hidden.
Understand "knight" as Rutherford the Brave.

Before printing the name of Rutherford the Brave:
	if Rutherford the Brave is not named:
		now Rutherford the Brave is not marked for listing;
		say "a knight" instead.


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

The entrance is a room.   The entrance is north of the corridor. The printed name of entrance is "The Entrance".  The description of the entrance is "You are standing at the entrance of the corridor.  [if the player is blinded]You've been the corridor for what seems like a lifetime and the light is blinding.  You can only make out dim shapes[otherwise]Looking out the entrance you see a path leading into a small village[end if]. [if Rutherford the Brave is not hidden]You notice a man dressed in the armor of a knight leaning on corridor wall.  He blends in so well with the wall, he is hard to see.[end if]"

Rule for listing nondescript items of the entrance while the player is blinded:
	say "Vague shapes can be seen here and there as you try to adjust to the lighting."

Book - Regions

The corridor-region is a region.  The entrance and the corridor are in corridor-region.


