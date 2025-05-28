class CreateArticlesTable < ActiveRecord::Migration[8.0]
  def change
    create_table :articles do |t|
      t.belongs_to :category, null: false, foreign_key: {to_table: "article_categories"}
      t.string :slug, null: false, index: {unique: true}, default: ""
      t.string :title, null: false, index: {unique: true}, default: ""
      t.text :content, null: false, default: ""
      t.datetime :publish_date, null: true

      t.timestamps
    end
  end
end
