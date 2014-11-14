
require 'active_record'

class PhoneNumber < ActiveRecord::Base
	validates :category,
			  presence: true

	validates :phone_number,
			  presence: true,
			  numericality: {only_integer: true}

	belongs_to :address_entry

end