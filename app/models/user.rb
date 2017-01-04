class User < ApplicationRecord
  # Direct associations

  has_many   :bookmarkeds,
             :dependent => :destroy

  # Indirect associations

  has_many   :venues,
             :through => :entrees,
             :source => :venue

  has_many   :entrees,
             :through => :bookmarkeds,
             :source => :entree

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
