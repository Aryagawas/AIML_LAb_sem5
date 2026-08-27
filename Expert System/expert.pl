
% Smart Home Lighting Expert System


:- dynamic light_status/2.
:- dynamic motion_detected/2.



room(living_room).
room(bedroom).
room(kitchen).



% Initially all lights are OFF.
light_status(living_room, off).
light_status(bedroom, off).
light_status(kitchen, off).



% Motion detected in living room and kitchen.
motion_detected(living_room, yes).
motion_detected(bedroom, no).
motion_detected(kitchen, yes).


action(turn_on(Room)) :-
    room(Room),
    motion_detected(Room, yes),
    light_status(Room, off).


action(turn_off(Room)) :-
    room(Room),
    motion_detected(Room, no),
    light_status(Room, on).


action(stop) :-
    \+ (
        action(turn_on(_))
    ),
    \+ (
        action(turn_off(_))
    ).



% Turn ON the light.
perform(turn_on(Room)) :-
    retract(light_status(Room, off)),
    assertz(light_status(Room, on)),
    format("Turning ON light in ~w...~n", [Room]).

% Turn OFF the light.
perform(turn_off(Room)) :-
    retract(light_status(Room, on)),
    assertz(light_status(Room, off)),
    format("Turning OFF light in ~w...~n", [Room]).

% Stop the system.
perform(stop) :-
    format("All lights are in the required state. Stopping...~n", []).


start :-
    action(Action),
    perform(Action),
    Action \= stop,
    start.

start :-
    action(stop),
    perform(stop).