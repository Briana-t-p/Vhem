class Lease < ApplicationRecord
  belongs_to :user
  belongs_to :rental
  mount_uploader :avatar, AvatarUploader
  serialize :avatar, JSON # If you use SQLite, add this line.
end
