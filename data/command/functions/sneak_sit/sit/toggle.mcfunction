scoreboard players enable @a toggle_sit

tellraw @a[scores={toggle_sit=1},tag=!s-t] [{"text":"[","color":"yellow"},{"text":"Sneak_Sit","color":"white"},{"text":"]","color":"yellow"},{"text":" Disable","color":"red"}]
tag @a[scores={toggle_sit=1},tag=!s-t] add s-t
tellraw @a[scores={toggle_sit=2},tag=s-t] [{"text":"[","color":"yellow"},{"text":"Sneak_Sit","color":"white"},{"text":"]","color":"yellow"},{"text":" Enable","color":"green"}]
tag @a[scores={toggle_sit=2..},tag=s-t] remove s-t
scoreboard players reset @a[scores={toggle_sit=2..}] toggle_sit