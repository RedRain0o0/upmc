execute unless score funds upmc.stage1.funds >= upmc.stage1.cost run return fail
scoreboard players set timer upmc.stage1.wire 0
scoreboard players operation wire upmc.stage1.wire += supply upmc.stage1.wire
scoreboard players operation funds upmc.stage1.funds -= cost upmc.stage1.wire
scoreboard players add price upmc.stage1.wire 50
