class Artisan < ApplicationRecord
  has_many :missions, dependent: :destroy
  has_and_belongs_to_many :skills
end
