def view_entry
	puts "Searching for entries by last name."
	puts "Search string:  "
	view_string = gets.chomp.to_s

	puts "Found #{AddressEntry.where(last_name: view_string).count} match(es)!"


	first_name = AddressEntry.first_name
	last_name  = AddressEntry.last_name

		puts """
		First name: #{first_name}
		Last name:  #{last_name}"""

		if PhoneNumber.empty? do
			puts "No phone numbers  :-("
			else
			puts "Phone number: #{PhoneNumber.phone_number}"
		end
		if Email.empty? do
			puts "No emails  :-("
			else
			puts "Email: #{Email.email}"
		end
end