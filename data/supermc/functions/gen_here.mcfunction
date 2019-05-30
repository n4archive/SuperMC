setblock ~ 0 ~ command_block{Command:"say SuperMC WGen was here - :) [v0.1]"}
summon armor_stand ~ ~1 ~ {Tags:["SmcGenSubAgent"],Invisible:1}
execute as @e[tag=SmcGenSubAgent] at @s store success score #tmp_gen supermc run spreadplayers ~ ~ 1 1 false @s
execute if score #tmp_gen supermc matches 0 run kill @s
execute if score #tmp_gen supermc matches 0 if score #log_debug_wgenerr supermc matches 1 run say org.nift4.supermc.worldgen.SpreadplayersFailedError: No valid block available.
# Only a little hack :) - DO NOT TRY AT HOME!
execute as @e[tag=SmcGenSubAgent] at @s store result score #tmp_gen supermc run seed
execute as @e[tag=SmcGenSubAgent] at @s store result score #pos_x supermc run data get entity @s Pos[0]
execute as @e[tag=SmcGenSubAgent] at @s store result score #pos_z supermc run data get entity @s Pos[2]
# TODO: Implement better formula
execute as @e[tag=SmcGenSubAgent] at @s run scoreboard players operation #tmp_gen supermc += #pos_x supermc
execute as @e[tag=SmcGenSubAgent] at @s run scoreboard players operation #tmp_gen supermc += #pos_z supermc
execute as @e[tag=SmcGenSubAgent] at @s run scoreboard players operation #tmp_gen supermc %= #structs supermc
execute as @e[tag=SmcGenSubAgent] at @s run scoreboard players operation #structid supermc = #tmp_gen supermc
# End TODO
execute as @e[tag=SmcGenSubAgent] at @s run scoreboard players set #tmp_gen supermc 0
execute as @e[tag=SmcGenSubAgent] at @s run scoreboard players set #action supermc 2
execute as @e[tag=SmcGenSubAgent] at @s run tp ~1 ~ ~
execute as @e[tag=SmcGenSubAgent] at @s run function #supermc:structures
execute as @e[tag=SmcGenSubAgent] at @s run kill @s
scoreboard players set #action supermc 0
