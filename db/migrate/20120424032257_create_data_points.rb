class CreateDataPoints < ActiveRecord::Migration
  def change
    create_table :data_points do |t|
      t.integer :data_topic
      t.integer :country
      t.integer :year
      t.decimal :value

      t.timestamps
    end
  end
end
