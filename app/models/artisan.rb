class Artisan < ApplicationRecord
  has_many :missions
  has_and_belongs_to_many :skills
end
