class User < ActiveRecord::Base
	validates :name, presence: true,:uniqueness => {:case_sensitive => false}
	validates :age, presence: true 
	validates :role, presence: true 
	validates :gender, presence: true 


    has_and_belongs_to_many :movies

end
