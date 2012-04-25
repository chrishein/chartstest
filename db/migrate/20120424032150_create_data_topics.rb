class CreateDataTopics < ActiveRecord::Migration
  def change
    create_table :data_topics do |t|
      t.string :name

      t.timestamps
    end
  end
end
