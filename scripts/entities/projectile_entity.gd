extends RigidBody2D
class_name ProjectileEntity

@export var direction : Vector2
@export var max_speed : float = 100
@export var current_speed : float = 0
@export var acceleration : float = 100000
@export var spell_output : String

### get the next projectile to instantiate ###

func cast_spell(spell_name):
	var scene = load("res://scenes/projectiles/" + spell_name + ".tscn")
	var new_spell = scene.instantiate()
	get_tree().root.add_child(new_spell)
	print("something cast")
