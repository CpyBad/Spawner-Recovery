# Add the mob description to recovered spawner items
execute as @e[type=item] if items entity @s contents minecraft:spawner[minecraft:custom_data~{spawner_mob:"minecraft:spider"}] run item modify entity @s contents spawner_recovery:spawner_spider
execute as @e[type=item] if items entity @s contents minecraft:spawner[minecraft:custom_data~{spawner_mob:"minecraft:skeleton"}] run item modify entity @s contents spawner_recovery:spawner_skeleton
execute as @e[type=item] if items entity @s contents minecraft:spawner[minecraft:custom_data~{spawner_mob:"minecraft:zombie"}] run item modify entity @s contents spawner_recovery:spawner_zombie
execute as @e[type=item] if items entity @s contents minecraft:spawner[minecraft:custom_data~{spawner_mob:"minecraft:blaze"}] run item modify entity @s contents spawner_recovery:spawner_blaze

# Remove XP when a spawner was just mined with Silk Touch.
execute as @a[scores={spawner_recovery.mined=1..}] if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"minecraft:silk_touch"}]] at @s run kill @e[type=minecraft:experience_orb,distance=..7]
execute as @a[scores={spawner_recovery.mined=1..}] run scoreboard players set @s spawner_recovery.mined 0
