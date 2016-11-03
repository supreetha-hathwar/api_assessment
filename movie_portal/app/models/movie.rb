class Movie < ActiveRecord::Base
	validates :title,:length => {:minimum => 2}, presence: true 
	validates :year, presence: true 
	validates :rating,:length => {:minimum => 1},:length => {:maximum => 10},presence: true 
	validates :language, presence: true 
	# validates :actors, presence: true 
	# validates :director, presence: true 
	# validates :producer, presence: true 

	  has_and_belongs_to_many :users
end
