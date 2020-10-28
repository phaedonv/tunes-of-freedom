class Dashboard < ApplicationRecord
  belong_to :user, optional: :true


end
