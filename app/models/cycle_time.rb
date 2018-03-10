class CycleTime < ApplicationRecord
  # Direct associations

  belongs_to :conv_ct

  belongs_to :ds53_ct

  belongs_to :ds40_ct

  belongs_to :user

  # Indirect associations

  # Validations

end
