class DataPoint < ActiveRecord::Base
  
  belongs_to :data_topic
  belongs_to :country
  
  default_scope :order => 'data_topic_id, country_id, year'
  
  attr_accessible :country, :data_topic, :value, :year
end
