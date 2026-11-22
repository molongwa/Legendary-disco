extends Node3D

func _ready():
    print("Welcome to Legendary Disco!")
    create_game()

func create_game():
    var floor = MeshInstance3D.new()
    var mesh = BoxMesh.new()
    mesh.size = Vector3(20, 0.2, 20)
    floor.mesh = mesh
    add_child(floor)
