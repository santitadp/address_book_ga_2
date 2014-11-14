
def add_entry

	entry = AddressEntry.new

	puts "CREATE NEW ENTRY"
	puts "First name: "
	entry.first_name = gets.chomp

	puts "Last name: "
	entry.last_name = gets.chomp

	phone = PhoneNumber.new

	puts "Phone number (no dashes): "
	phone.phone_number = gets.chomp

	puts "Phone number category: "
	phone.category = gets.chomp

	# puts "Would you like to enter additional phone numbers? (Y/N)"
	# 	response = gets.chomp
	# 	while response == "Y"
	# 			puts "You're entering additional phone numbers."
	# 		if response == "N"
	# 			puts "You're not entering additional phone numbers."
	# 		else
	# 			puts "Please enter Y/N"
	# 		end
	# 	end

	email = Email.new

	puts "Email address: "
	email.email = gets.chomp

	puts "Email category: "
	email.category = gets.chomp

	# puts "Would you like to enter additional email addresses? (Y/N)"
	# 	response = gets.chomp
	# 	while response == "Y"
	# 			puts "Yes"
	# 		if response == "N"
	# 			puts "No!"
	# 		else 
	# 			puts "Please enter Y/N"	
	# 		end
	# 	end
	entry.save
	phone.save
	email.save

	puts AddressEntry.first.inspect

end