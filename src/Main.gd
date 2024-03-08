extends Node

func _on_Button_pressed():
	var screen = get_node("Main");
	var windowSize = OS.get_real_window_size().x
	
	while screen.position.x > -windowSize:
		screen.position.x -= windowSize/50;
		screen.position.x = clamp(screen.position.x, -windowSize, 0);
		yield(get_tree().create_timer(0.0001), "timeout")

func cleanUp():
	var screen = get_node("Main");
	var windowSize = OS.get_real_window_size().x
	
	var Title = get_node("Main/Data2/Title")
	var Coordinates = get_node("Main/Data2/Coordinates")
	var OpRiskLvl = get_node("Main/Data2/ORL")
	var SecPres = get_node("Main/Data2/SP")
	var EofA = get_node("Main/Data2/EoA")
	var AddEqReq = get_node("Main/Data2/AER")
	var Notes = get_node("Main/Data2/Notes")
	
	while screen.position.x < 0:
		screen.position.x += windowSize/50;
		screen.position.x = clamp(screen.position.x, -windowSize, 0);
		yield(get_tree().create_timer(0.0001), "timeout")
	
	Title.text = ""
	Coordinates.text = ""
	OpRiskLvl.text = ""
	SecPres.text = ""
	EofA.text = ""
	AddEqReq.text = ""
	Notes.text = ""

func _on_Submit_pressed():
	var Title = get_node("Main/Data2/Title").text
	var Coordinates = get_node("Main/Data2/Coordinates").text
	var OpRiskLvl = get_node("Main/Data2/ORL").text
	var SecPres = get_node("Main/Data2/SP").text
	var EofA = get_node("Main/Data2/EoA").text
	var AddEqReq = get_node("Main/Data2/AER").text
	var Notes = get_node("Main/Data2/Notes").text
	
	cleanUp()
