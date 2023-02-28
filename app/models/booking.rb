class Booking < ApplicationRecord
  belongs_to :castle
  belongs_to :user
  validates :total_price, presence: true, numericality: { only_integer: true }
  validates :validate, presence: true
  validates :check_in, numericality: { only_date: true }
  validates :check_out, numericality: { only_date: true }
  validates :check_in, comparison: { greater_than: :check_out }
end
