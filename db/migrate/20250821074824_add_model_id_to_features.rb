class AddModelIdToFeatures < ActiveRecord::Migration[7.1]
  def change
    add_column :features, :model_id, :string
  end
end
