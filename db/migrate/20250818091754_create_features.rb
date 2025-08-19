class CreateFeatures < ActiveRecord::Migration[7.1]
  def change
    create_table :features do |t|
      t.string :name
      t.date :date_finished
      t.text :summary
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
