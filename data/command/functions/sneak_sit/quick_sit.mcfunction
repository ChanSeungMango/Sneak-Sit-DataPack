execute as @a[tag=!sit_down] at @s if entity @e[type=minecraft:area_effect_cloud,tag=SEAT,sort=nearest,limit=1,distance=..0.17] run scoreboard players enable @s sit

tag @a[scores={sit=1..}] add sit_down
execute as @a[scores={sit=1..}] at @s unless entity @e[type=minecraft:area_effect_cloud,tag=SEAT,sort=nearest,limit=1,distance=..0.17] run scoreboard players reset @s sit