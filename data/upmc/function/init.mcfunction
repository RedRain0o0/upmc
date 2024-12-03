scoreboard players set clips upmc.main.clips 0
scoreboard players set unsoldClips upmc.main.clips 0
scoreboard players set price upmc.stage1.funds 25
scoreboard players set funds upmc.stage1.funds 0
scoreboard players set wire upmc.stage1.wire 1000
scoreboard players set cost upmc.stage1.wire 20
scoreboard players set supply upmc.stage1.wire 1000

data merge entity @n[type=text_display,tag=upmc.screen.PaperclipsCount] {text:'{"text":"-----------------------------------------------------------\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n","extra":[{"translate":"upmc.screen.paperclips","with":[{"score":{"name":"clips","objective":"upmc.main.clips"}}]}]}'}