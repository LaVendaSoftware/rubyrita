class CreateCategoriesTable < ActiveRecord::Migration[8.0]
  def change
    create_table :article_categories do |t|
      t.string :slug, null: false, index: {unique: true}, default: ""
      t.string :title, null: false, index: {unique: true}, default: ""

      t.timestamps
    end
  end
end
