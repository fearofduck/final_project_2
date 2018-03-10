class Ds53Sea < ApplicationRecord
  # Direct associations

  has_many   :seasonalities,
             :foreign_key => "ds53_seas_id",
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
