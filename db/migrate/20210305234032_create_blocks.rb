class CreateBlocks < ActiveRecord::Migration[6.1]
  def change
    create_table :blocks do |t|
      t.string :title
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.references :channel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
