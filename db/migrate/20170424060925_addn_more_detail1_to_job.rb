class AddnMoreDetail1ToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :activity_time, :string
    add_column :jobs, :activity_address, :string
  end
end
