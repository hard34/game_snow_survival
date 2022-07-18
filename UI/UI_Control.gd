extends Control

func toggle_inventory(inventory):
	if $Panel.visible:
		$Panel.clear()
		$Panel.visible = false
	else:
		$Panel.visible = true
		$Panel.show_inventory(inventory)
		
func update_inventory(inventory):
	if $Panel.visible:
		$Panel.show_inventory(inventory)
