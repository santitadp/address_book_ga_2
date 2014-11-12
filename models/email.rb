
require 'active_record'

class Email < ActiveRecord::Base
	validates :category,
			  presence: true

	validates :email,
	 	 	  presence: true

	belongs_to :addressbook

end	