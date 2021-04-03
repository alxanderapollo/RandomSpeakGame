extends Control


func _ready():
	var prompts = ["alex", "Silent Hill", "Greatest"]
	var game = "once upon a time %s played %s and thought it was the %s horror game to ever be made"
	print(game % prompts )
	var moviePrompt = ["alex", "Matrix", "amazing", "art"]
	var game2 = "Once upon a time %s saw the %s and thought it was an %s peice of %s  "
	print(game2 % moviePrompt)
	
	#get node function
	#Fetches a node.
	#get_node("DisplayText")
	#another way to get a node and modify its properties
	#what we are doing is grabbing a Label node which i renamed to display text
	# we are then filling its text feild with this is some text
	$DisplayText.text = "This is some text"
	$DisplayText.text = game2 % moviePrompt
		
