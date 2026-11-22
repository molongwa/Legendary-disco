extends MeshInstance3D

var rotation_speed = 1.5

func _ready():
    var sphere = SphereMesh.new()
    sphere.radius = 1.2
    sphere.height = 2.4
    mesh = sphere

    var material = StandardMaterial3D.new()
    material.albedo_color = Color.GOLD
    material.metallic = 1.0
    material.roughness = 0.15
    material.emission_enabled = true
    material.emission = Color.GOLD
    material.emission_energy_multiplier = 1.5
    material_override = material

func _process(delta):
    rotate_y(rotation_speed * delta)
