# Initialize the raycast distance
scoreboard players set @s spawner_recovery.raycast 60

# Start raycast from the player's eyes
execute anchored eyes positioned ^ ^ ^0.1 run function spawner_recovery:raycast

# Allow the placement advancement to trigger again
advancement revoke @s only spawner_recovery:place_spawner