scoreboard players add timer upmc.stage1.wire 1
execute if score timer upmc.stage1.wire matches 251.. if score price upmc.stage1.wire matches 15010.. run scoreboard players set passed1 upmc.logic.disposable 1
execute if score passed1 upmc.logic.disposable matches 1 run scoreboard players operation op1 upmc.math.disposable = price upmc.stage1.wire
execute if score passed1 upmc.logic.disposable matches 1 run scoreboard players operation op1 upmc.math.disposable /= 1000 upmc.math.numbers
execute if score passed1 upmc.logic.disposable matches 1 run scoreboard players operation price upmc.stage1.wire -= op1 upmc.math.disposable
execute if score passed1 upmc.logic.disposable matches 1 run scoreboard players set timer upmc.stage1.wire 0

scoreboard players reset op1 upmc.math.disposable
scoreboard players reset passed1 upmc.logic.disposable

