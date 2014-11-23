def view_entry
	puts "Searching for entries by last name."
	puts "Search string:  "
	view_string = gets.chomp.to_s

  ### Enhancement: You can do substring searches
  ###              using a 'LIKE' query.  Ex:
  ###
  ###                AddressEntry.where("last_name LIKE ?", "%#{view_string}%")
  ###
	entries_found = AddressEntry.where(last_name: view_string)

	puts "Found #{entries_found.count} match(es)!"

	entries_found.each do |entry|
		puts "Here's what I've found:"

		puts "First name: #{entry.first_name}"
		puts "Last name:  #{entry.last_name}"

		phone = entry.phone_numbers

		phone.each do |entry|
			puts "Phone number digits:   #{entry.phone_number}"
			puts "Phone number category: #{entry.category}"
		end

		if phone.empty?
			puts "No phone numbers :-("
		end

		email = entry.emails

		email.each do |entry|
			puts "Email address:  #{entry.email}"
			puts "Email category: #{entry.category}"
		end

		if email.empty?
			puts "No emails :-("
		end

		puts "=============================="
	end
end