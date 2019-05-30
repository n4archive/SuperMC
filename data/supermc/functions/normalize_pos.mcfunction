scoreboard players operation #chunks_x16 supermc = #chunks supermc
scoreboard players operation #chunks_x16 supermc *= #const_16 supermc
scoreboard players operation #tmp_pos_x supermc = #pos_x supermc
scoreboard players operation #tmp_pos_z supermc = #pos_z supermc
scoreboard players operation #tmp_pos_x supermc %= #chunks_x16 supermc
scoreboard players operation #tmp_pos_z supermc %= #chunks_x16 supermc
scoreboard players operation #pos_x supermc -= #tmp_pos_x supermc
scoreboard players operation #pos_z supermc -= #tmp_pos_z supermc
scoreboard players set #tmp_pos_x supermc 0
scoreboard players set #tmp_pos_z supermc 0
scoreboard players set #chunks_x16 supermc 0
