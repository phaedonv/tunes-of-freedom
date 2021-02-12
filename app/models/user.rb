class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable # I may delete :validatable..

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :name, presence: true, uniqueness: true

  has_many :lists, dependent: :destroy
  has_one_attached :photo
end
