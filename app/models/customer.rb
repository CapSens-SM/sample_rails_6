class Customer < ApplicationRecord
  extend Enumerize
  USER_STATE = %i[ new contacted negociating signed ]
  enumerize :state, in: USER_STATE, default: :new

end
