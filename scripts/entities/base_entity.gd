class_name BaseEntity
extends CharacterBody2D

var max_speed : int = 100
var current_speed : float = 0
var acceleration : float = 100
var deceleration : float = 100


var max_health : int = 100
var current_health : float = 100


var max_mana : int = 100
var current_mana : float = 100
var mana_regen : float = 1


var max_stamina : int = 100
var current_stamina : float = 100


#####     ENTITY METHODS     #####

func take_damage(amount):
	if (current_health < amount):
		current_health -= amount
	else:
		die()

func die():
	print("something died")
	#add death stuff
	queue_free()

func gain_health(amount):
	if current_health < max_health:
		current_health += amount

func deplete_mana(amount):
	if current_mana < amount:
		print("out of mana")
	else:
		current_mana -=amount

func regen_mana(amount):
	if (current_mana + mana_regen) > max_mana:
		current_mana = max_mana
	else:
		current_mana += mana_regen
