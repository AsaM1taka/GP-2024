extends Area2D

@export var health_restore_amount: int = 20

# When player collides with the health item, restore health
func _on_HealthItem_body_entered(body):
	if body.is_in_group("player"):  # Check if it's the player
		body.lives += health_restore_amount
		queue_free()  # Remove the item after it's collected
