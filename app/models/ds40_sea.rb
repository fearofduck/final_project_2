class Ds40Sea < ApplicationRecord
  # Direct associations

  has_many   :seasonalities,
             :foreign_key => "ds40_seas_id",
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
