execute as @a[tag=!s-r,tag=!s-o,tag=!s-t] if entity @s[predicate=sneaking] unless score @s sneak_sit matches 26.. run scoreboard players add @s sneak_sit 1
execute as @a[tag=!s-r] unless entity @s[predicate=sneaking] if score @s sneak_sit matches 1..25 run scoreboard players reset @s sneak_sit
tag @a[tag=!s-r,scores={sneak_sit=25..}] add s-r
execute as @a unless entity @s[nbt={OnGround:1b}] if score @s sneak_sit_count matches 0..42 run title @s actionbar [{"text":"▊","color":"red"},{"text":"▊","color":"red"},{"text":"▊","color":"red"},{"text":"▊","color":"red"}]
execute as @a unless entity @s[nbt={OnGround:1b}] run scoreboard players reset @s sneak_sit
execute as @a unless entity @s[nbt={OnGround:1b}] run scoreboard players reset @s sneak_sit_count
execute as @a unless entity @s[nbt={OnGround:1b}] run tag @s remove s-r

scoreboard players add @a[tag=s-r] sneak_sit_count 1
execute as @a[tag=s-r] if score @s sneak_sit matches 26.. run scoreboard players reset @s sneak_sit

title @a[tag=s-r,predicate=sneaking,scores={sneak_sit_count=..14}] actionbar [{"text":"▊","color":"gray"},{"text":"▊","color":"gray"},{"text":"▊","color":"gray"},{"text":"▊","color":"gray"}]
title @a[tag=s-r,predicate=sneaking,scores={sneak_sit_count=15..28}] actionbar [{"text":"▊","color":"gray"},{"text":"▊","color":"green"},{"text":"▊","color":"green"},{"text":"▊","color":"gray"}]
title @a[tag=s-r,predicate=sneaking,scores={sneak_sit_count=29..42}] actionbar [{"text":"▊","color":"green"},{"text":"▊","color":"green"},{"text":"▊","color":"green"},{"text":"▊","color":"green"}]
scoreboard players set @a[tag=s-r,scores={sneak_sit_count=43..}] sneak_sit_out_tick 1
tag @a[tag=s-r,scores={sneak_sit_count=43..}] add s-o
tag @a[tag=s-r,scores={sneak_sit_count=43..},tag=s-o] remove s-r
scoreboard players reset @a[tag=!s-r,scores={sneak_sit_count=43..}] sneak_sit
scoreboard players reset @a[tag=!s-r,scores={sneak_sit_count=43..}] sneak_sit_count
execute as @a[tag=s-r] if score @s sneak_sit_count matches 0..42 unless entity @s[predicate=sneaking] run tag @s add sit_down
scoreboard players set @a[tag=sit_down,scores={sneak_sit=1..42}] sneak_sit_count 44

execute as @a[tag=sit_down] at @s unless entity @e[type=minecraft:area_effect_cloud,tag=SEAT,limit=1,sort=nearest,distance=..0.6] run summon minecraft:area_effect_cloud ~ ~-0.47 ~ {Duration:2147483647,Radius:0,Tags:["SEAT"]}
execute as @a[tag=sit_down] at @s if entity @e[type=minecraft:area_effect_cloud,tag=SEAT,limit=1,sort=nearest,distance=..0.57] run ride @s mount @e[type=minecraft:area_effect_cloud,tag=SEAT,limit=1,sort=nearest,distance=..0.6]
execute as @a[tag=sit_down] at @s if entity @e[type=minecraft:area_effect_cloud,tag=SEAT,limit=1,sort=nearest,distance=..0.17] run tag @s remove sit_down
execute as @e[type=minecraft:area_effect_cloud,tag=SEAT] at @s unless entity @a[tag=!sit_down,sort=nearest,limit=1,distance=..0.17] unless entity @a[tag=sit_down,sort=nearest,limit=1,distance=..0.57] run kill @s

execute as @a[tag=s-o] unless entity @s[predicate=sneaking] run tag @s remove s-o
execute as @a[tag=s-o] unless entity @s[nbt={OnGround:1b}] run tag @s remove s-o

scoreboard players add @a[scores={sneak_sit_out_tick=1..}] sneak_sit_out_tick 1
title @a[scores={sneak_sit_out_tick=1..21}] actionbar [{"text":"▊","color":"red"},{"text":"▊","color":"red"},{"text":"▊","color":"red"},{"text":"▊","color":"red"}]
title @a[scores={sneak_sit_out_tick=22..}] actionbar ""
scoreboard players reset @a[scores={sneak_sit_out_tick=23..}] sneak_sit_out_tick