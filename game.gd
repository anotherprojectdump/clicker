extends Node2D

const SAVE_PATH := "user://highscore.save"
var score

func save_high_score(score: int) -> void:
	var f := FileAccess.open(SAVE_PATH, FileAccess.WRITE)
	f.store_32(score)
	
func get_high_score():
	if not FileAccess.file_exists(SAVE_PATH):
		return 0
	return str(FileAccess.open(SAVE_PATH, FileAccess.READ).get_32())

func _ready() -> void:
	var i = 20
	while i > 0:
		await get_tree().create_timer(1).timeout
		i-=1
		$Label.set_timer_text(str(i))
	score = $Area2D.get_score()
	if score > int(get_high_score()):
		save_high_score(score)
	end_game()
	
func end_game() -> void:
		get_tree().change_scene_to_file("res://node_2d.tscn")
