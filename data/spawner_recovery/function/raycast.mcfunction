# Check if the raycast reached a spawner
execute if block ~ ~ ~ minecraft:spawner run function spawner_recovery:restore

# Continue the raycast if no spawner was found
execute unless block ~ ~ ~ minecraft:spawner run scoreboard players remove @s spawner_recovery.raycast 1
execute unless block ~ ~ ~ minecraft:spawner if score @s spawner_recovery.raycast matches 1.. positioned ^ ^ ^0.1 run function spawner_recovery:raycast