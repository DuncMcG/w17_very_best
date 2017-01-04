class Entree < ApplicationRecord
  # Direct associations

  has_many   :bookmarkeds,
             :dependent => :destroy

  belongs_to :dish

  belongs_to :venue

  # Indirect associations

  # Validations

end
