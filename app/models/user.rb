class User < ApplicationRecord
  mount_uploader :foto, ImageUploader
  has_one :vehicle
  has_one :viaje

  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :nombre, :apellido_paterno, :apellido_materno, :foto, :telefono, presence: true
end
