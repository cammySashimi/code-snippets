Snungeon was made for a freshman game design class, where a requirement
was to use the free trial version of Construct 3. That version has a hard
limit of 50 "events" per project, each event being roughly equal to an
if-then condition. To give you an idea of scale, the boss behaviours alone
took up 10 of those events.

Included are screenshots of some bits I'm particularly proud of:

**ant-death.png** - When this enemy dies, they have a 20% chance of dropping
a health pickup. If I'd made a random check for this, it would have eaten
up about 4 events. Instead, it simply *always* drops a health pickup, just
at a random position from `irandom(-2,2)*999`, which puts it off the map
80% of the time.

**outro.png** - Using built-in physics mechanisms, we were able to create
an animated outro using only 1 event. (See outro.gif to see it in action :) )

**player-rolling.png and player-rolling-end.png** - By transforming the
player temporarily into a builtin "bullet" object, we were able to create
a dodge-rolling mechanic extremely efficiently, thanks to built-in acceleration
and bounce mechanics.
