class Item < ApplicationRecord
	validates :nome, presence: true
	validates :price, presence:true, numericality: { only_float: true }
end
