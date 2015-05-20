class BonusCode < ActiveRecord::Base
  belongs_to :product

  validates :product_id, presence: true
  validates :bonus_code, presence: true
end
