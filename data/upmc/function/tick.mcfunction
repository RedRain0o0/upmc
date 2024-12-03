## Buttons
execute as @e[type=interaction,tag=upmc.button.MakeClip] on target run function upmc:main/clips/make_paperclip
execute as @e[type=interaction,tag=upmc.button.WireBuyer] on target run function upmc:main/wire/toggle_wire_buyer
execute as @e[type=interaction,tag=upmc.button.BuyWire] on target run function upmc:main/wire/buy_wire
execute as @e[type=interaction,tag=upmc.button.RaisePrice] on target run function upmc:main/clips/raise_price
execute as @e[type=interaction,tag=upmc.button.LowerPrice] on target if score price upmc.stage1.funds matches 2.. run scoreboard players remove price upmc.stage1.funds 1

#execute as @e[type=interaction,tag=upmc.button.] on target run function upmc:main/

## Ticking
function upmc:main/wire/adjust_wire_price

title @a actionbar {"translate": "upmc.actionbar.debug","with": [{"score": {"name": "clips", "objective": "upmc.main.clips"}},{"score": {"name": "wire", "objective": "upmc.stage1.wire"}},{"score": {"name": "funds", "objective": "upmc.stage1.funds"}}]}

execute if score unsoldClips upmc.main.clips matches 1.. store result score random upmc.logic.disposable run random value 0..1000000000
execute if score unsoldClips upmc.main.clips matches 1.. if score demand upmc.main.clips matches 100.. run function upmc:main/clips/sell_clips
execute if score demand upmc.main.clips matches ..99 store result score demandBig upmc.logic.disposable run scoreboard players get demand upmc.main.clips
execute if score demand upmc.main.clips matches ..99 run scoreboard players operation demandBig upmc.logic.disposable *= 1000000 upmc.math.numbers
execute if score random upmc.logic.disposable < demandBig upmc.logic.disposable run function upmc:main/clips/sell_clips

## Tick Reset
execute as @e[type=interaction,tag=upmc.type.Button] run data remove entity @s interaction
