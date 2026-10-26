extends Label
const SAVE_PATH := "user://highscore.save"
#func save_high_score(score: int) -> void:
#	var f := FileAccess.open(SAVE_PATH, FileAccess.WRITE)
#	f.store_32(score)


func _ready() -> void:
	if not FileAccess.file_exists(SAVE_PATH):
		text = "0"
	else:
		text = str(FileAccess.open(SAVE_PATH, FileAccess.READ).get_32())
