extends Node3D

func _ready():
    create_world()
    create_disco_ball()

func create_world():
    var floor = MeshInstance3D.new()
    var mesh = BoxMesh.new()
    mesh.size = Vector3(20, 0.2, 20)
    floor.mesh = mesh
    floor.position.y = -0.1
    add_child(floor)

    var light = DirectionalLight3D.new()
    light.rotation_degrees = Vector3(-45, 45, 0)
    add_child(light)

    var camera = Camera3D.new()
    camera.position = Vector3(0, 8, 12)
    camera.look_at(Vector3.ZERO)
    add_child(camera)
