class Post < ApplicationRecord
  validates :name, presence: true
  validates :product_name, presence: true
  validates :work_name, presence: true
  validates :quantity, numericality: { only_integer: true, greater_than: 0, less_than: 1000000}, allow_blank: true
  belongs_to :user
end
