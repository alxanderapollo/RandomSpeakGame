extends Control


func _ready():
	var prompts = ["alex", "Silent Hill", "Greatest"]
	var game = "once upon a time %s played %s and thought it was the %s horror game to ever be made"
	print(game % prompts )
	var moviePrompt = ["alex", "Matrix", "amazing", "art"]
	var game2 = "Once upon a time %s saw the %s and thought it was an %s peice of %s  "
	print(game2 % moviePrompt)
