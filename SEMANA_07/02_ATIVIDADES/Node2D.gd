extends Node2D

var pontos = 0
func _ready():
	pass # Replace with function body.



func _process(delta):
	pass


func _on_Area2D_book_body_entered(body):
	pontos+=1
	$Area2D_book.hide()


func _on_wand_body_entered(body):
	pontos+=1
	$wand.hide()


func _on_heart_body_entered(body):
	pontos+=1
	$heart.hide()


func _on_nautilos_body_entered(body):
	pontos+=1
	$nautilos.hide()


func _on_entrada_body_entered(body):
	if pontos >=4:
		get_tree().change_scene("res://dentro/dentro.tscn")


func _on_continuar_pressed():
	$Dialogo.hide()
