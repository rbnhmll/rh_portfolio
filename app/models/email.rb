class Email < ActiveRecord::Base

	validates :name, presence: true
	validates :email, presence: true
	validates :message, presence: true
	validates :denySubmit, presence: false

end