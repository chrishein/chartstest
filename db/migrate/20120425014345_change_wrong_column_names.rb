class ChangeWrongColumnNames < ActiveRecord::Migration
  def change
    change_table :data_points do |t|
      t.rename :data_topic, :data_topic_id
      t.rename :country, :country_id
    end
  end
end
