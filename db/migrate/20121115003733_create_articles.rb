class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.boolean :publish
      t.boolean :on_home_page

      t.timestamps
    end
  end
end
