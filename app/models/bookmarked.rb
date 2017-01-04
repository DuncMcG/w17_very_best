class Bookmarked < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :entree

  # Indirect associations

  # Validations

end
