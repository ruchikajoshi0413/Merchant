class Pcart < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  belongs_to :product
end
