scoreboard players add clips upmc.main.clips 1
scoreboard players add unsoldClips upmc.main.clips 1
scoreboard players remove wire upmc.stage1.wire 1
data merge entity @n[type=text_display,tag=upmc.screen.PaperclipsCount] {text:'{"text":"-----------------------------------------------------------\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n","extra":[{"translate":"upmc.screen.paperclips","with":[{"score":{"name":"clips","objective":"upmc.main.clips"}}]}]}'}