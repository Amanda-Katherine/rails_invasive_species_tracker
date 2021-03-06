class CreatePostEnvironments < ActiveRecord::Migration[6.0]
  def change
    create_table :post_environments do |t|
      t.references :post, null: false, foreign_key: true
      t.references :environment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
