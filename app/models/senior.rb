class Senior < ApplicationRecord
  belongs_to :facility

  validates :senior_name, presence: true, length: { maximum: 20 }
  validates :floor, presence: true
  validates :charge_worker, presence: true, length: { maximum: 20 }
end
