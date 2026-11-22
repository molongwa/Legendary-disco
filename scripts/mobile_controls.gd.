extends CanvasLayer

var player

func _ready():
    var directions = [
        ["LEFT", Vector2(50, -110)],
        ["RIGHT", Vector2(170, -110)],
        ["UP", Vector2(110, -170)],
        ["DOWN", Vector2(110, -50)]
    ]

    for item in directions:
        var button = Button.new()
        button.text = item[0]
        button.position = Vector2(30, 0) + item[1]
        button.size = Vector2(100, 90)
        add_child(button)

        button.button_down.connect(_on_button_down.bind(item[0]))
        button.button_up.connect(_on_button_up.bind(item[0]))

func _on_button_down(direction):
    Input.action_press("move_" + direction.to_lower())

func _on_button_up(direction):
    Input.action_release("move_" + direction.to_lower())
