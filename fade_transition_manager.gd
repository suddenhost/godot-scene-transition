class_name FadeTransitionManager
extends ColorRect

var fade_in_player : AnimationPlayer
var fade_out_player : AnimationPlayer
var _next_scene : String

func _ready() -> void:
	fade_in_player = $FadeIn
	fade_out_player = $FadeOut
	fade_in_player.play("FadeIn")
			
func fade_out(next_scene : String):
	_next_scene = next_scene
	fade_out_player.play("FadeOut")

func _on_fade_out_animation_finished(anim_name: StringName) -> void:
	get_tree().change_scene_to_file(_next_scene)
