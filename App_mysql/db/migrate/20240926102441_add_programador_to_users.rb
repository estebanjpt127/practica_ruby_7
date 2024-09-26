class AddProgramadorToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :programador, :boolean
  end
end
