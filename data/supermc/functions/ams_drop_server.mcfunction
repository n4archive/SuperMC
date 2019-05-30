execute as @e[type=item,nbt={Item:{tag:{SmcDropAgent:{}}}}] at @s store result score #dropid supermc run kill @e[type=experience_orb,distance=..1]
execute as @e[type=item,nbt={Item:{tag:{SmcDropAgent:{}}}}] at @s store result score #dropid supermc run data get entity @s Item.tag.SmcDropAgent.BlockId
scoreboard players set #droptype supermc 1
scoreboard players set #action supermc 2
execute as @e[type=item,nbt={Item:{tag:{SmcDropAgent:{}}}}] at @s run function #supermc:itemdefs
scoreboard players set #action supermc 0
scoreboard players set #droptype supermc 0
execute as @e[type=item,nbt={Item:{tag:{SmcDropAgent:{}}}}] at @s run kill @s
