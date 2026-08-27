# Smart Home Lighting System

This is a simple Prolog program for controlling lights in different rooms based on motion detection.

## Features

* Turns the light ON when motion is detected.
* Turns the light OFF when there is no motion.
* Stores the current status of each light.
* Stops when no further action is required.

## Rooms

* Living Room
* Bedroom
* Kitchen

## How to Run

Save the program as:

```text
smart_home.pl
```

Open SWI-Prolog and load the file:

```prolog
[smart_home].
```

Then run:

```prolog
start.
```

## Sample Output

```text
Turning ON light in living_room...
Turning ON light in kitchen...
All lights are in the required state. Stopping...
```

## Concepts Used

* Facts and rules
* Dynamic predicates
* `assertz/1`
* `retract/1`
* Recursion
* Negation
