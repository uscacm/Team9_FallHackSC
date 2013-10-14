class App < ActiveRecord::Base
  attr_accessible :description, :name, :rating, :ratings, :user_id, :avatar, :url, :author
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
