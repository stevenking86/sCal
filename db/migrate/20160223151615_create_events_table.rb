class CreateEventsTable < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.string :body
      t.time :time_start
      t.time :time_end
      t.integer :day_id

      t.timestamps null: false

    end
  end
end
