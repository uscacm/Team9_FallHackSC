class App < ActiveRecord::Base
  attr_accessible :description, :name, :rating, :ratings, :user_id
end
