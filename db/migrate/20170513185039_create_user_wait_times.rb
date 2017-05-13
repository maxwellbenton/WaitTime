class CreateUserWaitTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_wait_times do |t|
      t.integer :user_id
      t.integer :store_id
      t.boolean :done

      t.timestamps
    end
  end
end
