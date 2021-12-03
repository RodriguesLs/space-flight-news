class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.boolean :feature
      t.string :title
      t.string :url
      t.string :image_url
      t.string :news_site
      t.string :summary
      t.string :published_at
      t.references :launch, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
