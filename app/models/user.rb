class User < ActiveRecord::Base
	attr_accessible :name, :email

	validates :name, :presence => true, :length => { :maximum => 30 }
	validates :email, :presence => true
end
