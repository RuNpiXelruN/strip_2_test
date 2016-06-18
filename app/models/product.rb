class Product < ApplicationRecord
  belongs_to :user
  has_many :sales

  has_attached_file :file

  validates_attachment_content_type :file, content_type: /\Aimage\/.*\Z/
  validates_numericality_of :price, greater_than: 49, message: "Price must be greater than 50 cents"
  
end
