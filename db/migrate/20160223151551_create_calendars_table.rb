class CreateCalendarsTable < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
