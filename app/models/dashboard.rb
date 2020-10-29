class Dashboard < ApplicationRecord
  belongs_to :user, optional: :true


end
