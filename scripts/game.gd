Gdscript
extends Node3D

var disco_lights = []

func _ready():
    create_world()
    create_disco_ball()
    create_disco_lights()

func create_world():
    var floor = MeshInstance3D.new()
    var mesh = BoxMesh.new()
    mesh.size = Vector3(20, 0.2, 20)
    floor.mesh = mesh
    floor.position.y = -0.1
    add_child(floor)

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
    var colours = [
        Color.RED,
        Color.BLUE,
        Color.GREEN,
        Color.PURPLE
    ]

    for i in range(4):
        var light = OmniLight3D.new()
        light.light_color = colours[i]
        light.position = Vector3(
            cos(i * PI / 2) * 5,
            3,
            sin(i * PI / 2) * 5
        )
        light.omni_range = 12
        light.light_energy = 3
        add_child(light)
        disco_lights.append(light)

func _process(delta):
    for i in range(disco_lights.size()):
        disco_lights[i].rotate_y(delta)
