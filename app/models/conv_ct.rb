class ConvCt < ApplicationRecord
  # Direct associations

  has_many   :cycle_times,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
