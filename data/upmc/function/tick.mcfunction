## Buttons
execute as @e[type=interaction_entity,tag=upmc.button.MakeClip] on target run function upmc:main/clip/make_paperclip
execute as @e[type=interaction_entity,tag=upmc.button.WireBuyer] on target run function upmc:main/wire/toggle_wire_buyer
execute as @e[type=interaction_entity,tag=upmc.button.BuyWire] on target run function upmc:main/wire/buy_wire
execute as @e[type=interaction_entity,tag=upmc.button.RaisePrice] on target run function upmc:main/funds/raise_price
execute as @e[type=interaction_entity,tag=upmc.button.LowerPrice] on target run function upmc:main/funds/lower_price

#execute as @e[type=interaction_entity,tag=upmc.button.] on target run function upmc:main/

## Ticking
function upmc:main/wire/adjust_wire_price



## Tick Reset
execute as @e[type=interaction_entity,tag=upmc.type.Button] run data remove entity @s Interaction
