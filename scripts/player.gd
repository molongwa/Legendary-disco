extends CharacterBody3D

@export var speed = 5.0

func _physics_process(delta):
    var direction = Vector3.ZERO

    if Input.is_key_pressed(KEY_LEFT):
        direction.x -= 1
    if Input.is_key_pressed(KEY_RIGHT):
        direction.x += 1
    if Input.is_key_pressed(KEY_UP):
        direction.z -= 1
    if Input.is_key_pressed(KEY_DOWN):
        direction.z += 1

    velocity.x = direction.x * speed
    velocity.z = direction.z * speed

    move_and_slide()
