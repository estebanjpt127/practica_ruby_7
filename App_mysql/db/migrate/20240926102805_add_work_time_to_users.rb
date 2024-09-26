class AddWorkTimeToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :work_time, :time
  end
end
