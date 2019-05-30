scoreboard players set #droptype supermc 2
scoreboard players set #action supermc 2
execute store result score #dropid supermc run data get entity @s HandItems[1].tag.BlockId
kill @e[type=item,nbt={Item:{id:"minecraft:chest"}},sort=nearest,limit=1]
function #supermc:itemdefs
scoreboard players set #action supermc 0
scoreboard players set #droptype supermc 0
scoreboard players set #dropid supermc 0
kill @s
