class Venue < ApplicationRecord
  # Direct associations

  has_many   :menuitems,
             :class_name => "Entree",
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :menuitems,
             :source => :users

  has_many   :dishes,
             :through => :menuitems,
             :source => :dish

  # Validations

end
