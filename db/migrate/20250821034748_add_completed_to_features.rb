class AddCompletedToFeatures < ActiveRecord::Migration[7.1]
  def change
    add_column :features, :completed, :boolean
  end
end
