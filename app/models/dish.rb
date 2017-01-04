class Dish < ApplicationRecord
  # Direct associations

  belongs_to :cuisine

  has_many   :menuitems,
             :class_name => "Entree",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
