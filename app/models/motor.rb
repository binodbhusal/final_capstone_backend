class Motor < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  belongs_to :store_location, foreign_key: 'location_id'
  has_many :reservations, foreign_key: :motor_id, dependent: :destroy

  validates :unit_price, :purchase_fee, :finance_fee, :total_price, numericality: { greater_than_or_equal_to: 0 }
  validates_presence_of :brand_name, :model_no, :manufacturer, :manufacture_date, :description, :photo
end
