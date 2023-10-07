class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :api
  has_many :motors, foreign_key: :user_id, dependent: :destroy
  has_many :reservations, foreign_key: :user_id, dependent: :destroy

  validates :name, presence: true
  validates :role, presence: true
end
