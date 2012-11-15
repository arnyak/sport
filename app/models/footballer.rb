class Footballer < ActiveRecord::Base
  attr_accessible :born_at, :city_born_in, :country_born_in, :first_name, :last_name
end
