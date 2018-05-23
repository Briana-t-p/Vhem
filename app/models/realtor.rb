class Realtor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :rentals
   mount_uploader :avatar, AvatarUploader
   serialize :avatar, JSON # If you use SQLite, add this line.

end
