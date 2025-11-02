# In-Lab Assignment 3

> Name: Sidharth Suresh

> ID: 100938544

# Vampire Un-survivors

## Loop

In this game, you get to fight enemies automatically while selecting upgrades.
Avoiding the enemies is key! *You cant kill them anyways!*

### Controls

WASD - Move

Escape - Quit game

Space - Continue off of death screen

## Diagram

Due to time constraints, I was unable to make it. (Got a bit too ambitious with the scope.)

## Observer Pattern

I used the built in [signals](https://docs.godotengine.org/en/stable/classes/class_signal.html) system in godot as the observer pattern.

I created two signals:

```gdscript
signal health_updated(val: float)
signal xp_updated(val: float)
```

these signals were used by the progress bars to determine the value related to these two.

## References

I used Godot 4.5.1 for this assignment. I used aseprite for this assignment.