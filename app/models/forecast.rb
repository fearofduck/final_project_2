class Forecast < ApplicationRecord
  # Direct associations

  belongs_to :cycle_time

  belongs_to :seasonality

  belongs_to :user

  # Indirect associations

  # Validations

end
