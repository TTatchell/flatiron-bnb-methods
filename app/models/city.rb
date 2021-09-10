class City < ActiveRecord::Base
  has_many :neighborhoods
  has_many :listings, :through => :neighborhoods

  def city_openings(date_1, date_2)
    byebug
    City.listings.all.select do |instance|
      byebug
      instance.created_at.to_date < date_1.to_date && instance.created_at.to_date > date_2.to_date
    end
  end
end

#e
