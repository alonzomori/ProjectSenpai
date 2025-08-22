class AddMarkedCompletedToFeatures < ActiveRecord::Migration[7.1]
  def change
    add_column :features, :column_type, :boolean
  end
end
