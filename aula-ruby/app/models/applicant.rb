class Applicant < ApplicationRecord
	validates :name, presence: true
	validates :email, presence:true
	validates :telephone, presence: true, numericality: { only_integer: true }
	validates :position, presence: true
	validates :bio, presence: true
end
