class Product < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :status, presence:true
  
  mount_uploader :image, ImageUploader

  has_many :productimage

  belongs_to :category
  enum status: { draft: 'draft', active: 'active', inactive: 'inactive' }, _default: :draft
end
