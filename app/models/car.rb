class Car < ApplicationRecord
  belongs_to :user
  # Validation pour la création de l'entité : Car
  validates :model, presence: true
  validates :model_date, presence: true
  validates :km_price, presence: true
  validates :day_price, presence: true
end
