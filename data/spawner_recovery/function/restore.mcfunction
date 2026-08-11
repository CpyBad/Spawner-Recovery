# Read the mob type stored on the placed spawner
data modify storage spawner_recovery:temp spawner_mob set from block ~ ~ ~ components."minecraft:custom_data".spawner_mob

# Restore the spawner's entity
data modify block ~ ~ ~ SpawnData.entity.id set from storage spawner_recovery:temp spawner_mob

# Build the spawn potential using the stored mob
data modify storage spawner_recovery:temp SpawnPotentials set value [{weight:1,data:{entity:{id:""}}}]
data modify storage spawner_recovery:temp SpawnPotentials[0].data.entity.id set from storage spawner_recovery:temp spawner_mob
data modify block ~ ~ ~ SpawnPotentials set from storage spawner_recovery:temp SpawnPotentials