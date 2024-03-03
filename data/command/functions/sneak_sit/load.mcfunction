scoreboard objectives add sneak_sit dummy
scoreboard objectives add sneak_sit_count dummy
scoreboard objectives add sneak_sit_out_tick dummy
scoreboard objectives add sit trigger
scoreboard objectives add toggle_sit trigger

tag @a remove s-r
tag @a remove s-o

tellraw @a[gamemode=creative] [{"text":"[","color":"yellow"},{"text":"Sneak_Sit","color":"white"},{"text":"] ","color":"yellow"},{"text":"Datapack ","color":"white"},{"text":"Loaded","color":"green"}]

tellraw @a[gamemode=spectator] [{"text":"[","color":"yellow"},{"text":"Sneak_Sit","color":"white"},{"text":"] ","color":"yellow"},{"text":"Datapack ","color":"white"},{"text":"Loaded","color":"green"}]