class CreateDaysTable < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.date :date, null: false
      t.string :name, null: false
      t.integer :calendar_id, null: false
    end
  end
end
