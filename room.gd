extends Node


func _on_new_game_pressed() -> void:
	$FadeTransitionManager.fade_out("res://room2.tscn")
