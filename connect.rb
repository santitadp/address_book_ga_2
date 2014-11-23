
require 'active_record'

puts """Welcome to AddressBook 2.0!

Establishing connection..."""

ActiveRecord::Base.establish_connection({
  adapter:  "sqlite3",

  ### Heh.  Copy-pasta.
  database: "./library.db"
})

puts "Connected!"