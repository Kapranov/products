class Product < ActiveRecord::Base
  has_many :bonus_codes

  validates :title, presence: true
  validates :bonus_codes, presence: true
  validates :status, presence: true
end
