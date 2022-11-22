class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.text :instruction
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
