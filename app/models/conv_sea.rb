class ConvSea < ApplicationRecord
  # Direct associations

  has_many   :seasonalities,
             :foreign_key => "conv_seas_id",
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
