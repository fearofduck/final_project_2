class Seasonality < ApplicationRecord
  # Direct associations

  belongs_to :ds40_seas,
             :class_name => "Ds40Sea"

  belongs_to :user

  # Indirect associations

  # Validations

end
