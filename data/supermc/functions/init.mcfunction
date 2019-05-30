scoreboard objectives add supermc minecraft.custom:minecraft.leave_game "SuperMC control data"
execute unless score #quiet supermc matches 1 run say Loading SuperMC...
scoreboard players set #const_16 supermc 16
scoreboard players set #chunks supermc 4
scoreboard players set #chunk_max supermc 9
execute unless score #quiet supermc matches 1 run say Loaded SuperMC Core.
scoreboard players set #action supermc 1
scoreboard players set #structs supermc 1
scoreboard players set #structn supermc 0
function #supermc:structures
scoreboard players operation #structs supermc += #structn supermc
scoreboard players set #action supermc 0
execute unless score #quiet supermc matches 1 run say Loaded SuperMC world generator.
function #supermc:ready
execute unless score #quiet supermc matches 1 run say Finished loading SuperMC and handling #supermc:ready
