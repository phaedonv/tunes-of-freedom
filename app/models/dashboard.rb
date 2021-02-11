class Dashboard < ApplicationRecord
  belongs_to :user, optional: true

  delegate :name, to: :user, prefix: true, allow_nil: true

  accepts_nested_attributes_for :user
end
