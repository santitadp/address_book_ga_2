
def display_menu

	puts """
	Main Menu

	1   Create New Entry
	2   Search for Entries
	3   Quit Application
	"""

	puts "Menu selection: "
	menu_select = gets.chomp

	return menu_select
end