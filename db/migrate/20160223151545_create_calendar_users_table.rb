class CreateCalendarUsersTable < ActiveRecord::Migration
  def change
    create_table :calendar_users do |t|
      t.integer :user_id, null: false
      t.integer :calendar_id, null: false

      t.timestamps null: false
    end
  end
end
