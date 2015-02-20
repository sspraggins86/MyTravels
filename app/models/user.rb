require 'bcrypt'
class User < ActiveRecord::Base

 has_attached_file :avatar, :styles => { 
    :medium => "300x300>", 
    :thumb => "100x100>" }, 
    :default_url => "/images/:style/missing.png"

 validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
 
    has_secure_password
    has_many :posts
    has_many :photos
    belongs_to :users
end