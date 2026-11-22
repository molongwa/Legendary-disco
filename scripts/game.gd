extends Node3D

func _ready():
    create_world()
    create_disco_ball()
    create_disco_lights()
    create_player()

func create_world():
    var ground = StaticBody3D.new()
    ground.position.y = -0.1
    add_child(ground)

    var floor = MeshInstance3D.new()
    var mesh = BoxMesh.new()
    mesh.size = Vector3(20, 0.2, 20)
    floor.mesh = mesh
    ground.add_child(floor)

    var collision = CollisionShape3D.new()
    var shape = BoxShape3D.new()
    shape.size = Vector3(20, 0.2, 20)
    collision.shape = shape
    ground.add_child(collision)

    var camera = Camera3D.new()
    camera.position = Vector3(0, 8, 12)
    camera.look_at(Vector3.ZERO)
    add_child(camera)

func create_disco_ball():
    var ball = MeshInstance3D.new()
    ball.set_script(load("res://scripts/disco_ball.gd"))
    ball.position = Vector3(0, 5, 0)
    add_child(ball)

func create_disco_lights():
    var colours = [Color.RED, Color.BLUE, Color.GREEN, Color.PURPLE]

    for i in range(4):
        var light = OmniLight3D.new()
        light.light_color = colours[i]
        light.position = Vector3(cos(i * PI / 2) * 5, 3, sin(i * PI / 2) * 5)
        light.omni_range = 12
        light.light_energy = 3
        add_child(light)

func create_player():
    var player = CharacterBody3D.new()
    player.set_script(load("res://scripts/player.gd"))
    player.position = Vector3(0, 1, 0)
    add_child(player)
