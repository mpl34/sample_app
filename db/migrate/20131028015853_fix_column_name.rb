class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :exercises, :created_by, :user_id
  end
end
