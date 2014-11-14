
require_relative 'connect'
require_relative 'models'

is_running = true

while is_running
		
	menu_select = display_menu

	if menu_select == "1"
		add_entry

	elsif menu_select == "3"
		is_running = false
	else
		puts "That's not on the menu!!"
	end
end