class Location < ActiveRecord::Base
	attr_accessible :name, :description
	validates :name,	:presence => true,:length => {:maximum => 15 }
	validates :description, :presence => true

end
