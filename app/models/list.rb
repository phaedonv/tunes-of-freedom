class List < ApplicationRecord
  belongs_to :user

  has_one_attached :photo

  validates :password, presence: false
end
