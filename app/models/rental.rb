class Rental < ApplicationRecord
  belongs_to :realtor
  has_many :leases, dependent: :destroy
  has_many :users, through: :leases
  mount_uploader :avatar, AvatarUploader
  serialize :avatar, JSON # If you use SQLite, add this line.

end
