require 'bcrypt'
class Post < ActiveRecord::Base

 	has_many :photos


end
