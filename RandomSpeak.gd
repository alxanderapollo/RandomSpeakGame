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
	#$DisplayText.text = "This is some text"
	#since VBOX is dictating the diaply of the nodes within the contianer
	# i need to get the relative path for the game to correctly display the contents 
	$VBoxContainer/DisplayText.text = game2 % moviePrompt
		

#this is what is known as a signal it allows us to input/output with the text box
#this function takes in, input from the user and returns it and
#places it on our display TEXT Node
#after each input the text box is clear and so is the input section
#for the user to type in
func _on_PlayerText_text_entered(text):
	updateDisplayText(text)
	


#signal for when the usr presses the button
func _on_TextureButton_pressed():
	#hold the words that are inputted by the user
	var words = $VBoxContainer/HBoxContainer/PlayerText.text
	#pass it up to the function
	updateDisplayText(words)

#signal for when the usr enters text into the information
func updateDisplayText(text):
	$VBoxContainer/DisplayText.text = text
	#clears the text after each input from the user
	$VBoxContainer/HBoxContainer/PlayerText.clear()
	
	
