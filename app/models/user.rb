class User < ApplicationRecord
  # Direct associations

  has_many   :forecasts,
             :dependent => :destroy

  has_many   :cycle_times,
             :dependent => :destroy

  has_many   :conv_cts,
             :dependent => :destroy

  has_many   :ds53_cts,
             :dependent => :destroy

  has_many   :ds40_cts,
             :dependent => :destroy

  has_many   :seasonalities,
             :dependent => :destroy

  has_many   :ds40_seas,
             :dependent => :destroy

  has_many   :ds53_seas,
             :dependent => :destroy

  has_many   :conv_seas,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
