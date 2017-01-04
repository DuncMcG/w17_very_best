class Dish < ApplicationRecord
  # Direct associations

  belongs_to :cuisine

  has_many   :menuitems,
             :class_name => "Entree",
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :menuitems,
             :source => :users

  has_many   :venues,
             :through => :menuitems,
             :source => :venue

  # Validations

end
