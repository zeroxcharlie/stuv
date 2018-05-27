class Vehicle < ApplicationRecord
  mount_uploader :foto, ImageUploader
  belongs_to :user
end
