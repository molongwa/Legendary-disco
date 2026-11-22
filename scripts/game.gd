extends Node3D

func _ready():
    create_world()

func create_world():
    var floor = MeshInstance3D.new()
    var mesh = BoxMesh.new()
    mesh.size = Vector3(20, 0.2, 20)
    floor.mesh = mesh
    add_child(floor)

    var light = DirectionalLight3D.new()
    light.rotation_degrees = Vector3(-45, 45, 0)
    add_child(light)

    var camera = Camera3D.new()
    camera.position = Vector3(0, 8, 12)
    camera.rotation_degrees = Vector3(-30, 0, 0)
    camera.current = true
    add_child(camera)
