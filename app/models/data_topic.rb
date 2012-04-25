class DataTopic < ActiveRecord::Base
  
  has_many :data_points
  
  attr_accessible :name
end
