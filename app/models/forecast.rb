class Forecast < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  belongs_to :cycle_time

  belongs_to :seasonality

  belongs_to :user

  # Indirect associations

  # Validations

end
