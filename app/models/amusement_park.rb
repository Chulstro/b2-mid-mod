class AmusementPark < ApplicationRecord
  has_many :rides

  def thrill_avg
    Ride.average(:rating)
  end
end
