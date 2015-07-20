class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates_presence_of :name, :price
  validates_uniqueness_of :name
  validates :price, numericality: true
end
