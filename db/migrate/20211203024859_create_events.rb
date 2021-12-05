class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :external_id
      t.string :provider
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
