extends Area2D

var score

func _ready():
	position = Vector2(randi_range(10, 1142),randi_range(10, 638))
	input_pickable = true  
	score = 0

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		position = Vector2(randi_range(10, 1142),randi_range(10, 638))
		score +=1
		
func get_score():
	return score		
		
		
