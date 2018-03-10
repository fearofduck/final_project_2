class Seasonality < ApplicationRecord
  # Direct associations

  belongs_to :ds53_seas,
             :class_name => "Ds53Sea"

  belongs_to :ds40_seas,
             :class_name => "Ds40Sea"

  belongs_to :user

  # Indirect associations

  # Validations

end
