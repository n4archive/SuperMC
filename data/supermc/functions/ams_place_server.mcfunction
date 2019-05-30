execute as @e[tag=SmcBlockPlaceAgent,limit=1] at @s run tag @s add SmcPlacing
execute as @e[tag=SmcPlacing,limit=1] at @s store result score #blockid supermc run data get entity @s Item.tag.BlockId
execute as @e[tag=SmcPlacing,limit=1] at @s run function supermc:gencblock
execute as @e[tag=SmcPlacing,limit=1] at @s run data modify block ~ ~ ~ SpawnData.ArmorItems[3].tag merge from entity @s Item.tag
execute as @e[tag=SmcPlacing,limit=1] at @s run kill @s
