
require_relative 'connect'
require_relative 'models'

is_running = true

### Nice and succinct!
while is_running
		
	menu_select = display_menu

	if menu_select == "1"
		add_entry
	elsif menu_select == "2"
		view_entry
	elsif menu_select == "3"
		puts """Don't worry -- your #{AddressEntry.count} address book entries are
		safely stored in the database!

		Bye bye!"""
		is_running = false
	else
		puts "That's not on the menu!!"
	end
end