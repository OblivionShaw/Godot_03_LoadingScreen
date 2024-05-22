extends Node

signal progress_changed(progress)
signal load_done

var _load_screen_path : String = "res://loading_screen/loading_screen.tscn"
var _load_screen = load(_load_screen_path)
var _loaded_resource:PackedScene
var _scene_path: String
var _progress: Array = []

var use_sub_threads : bool = true

func load_scene(scene_path: String) -> void:
	_scene_path = scene_path
	
	var new_loading_screen = _load_screen.instantiate()
	get_tree().get_root().add_child(new_loading_screen)

