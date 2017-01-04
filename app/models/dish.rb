class Dish < ApplicationRecord
  # Direct associations

  has_many   :menuitems,
             :class_name => "Entree",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
