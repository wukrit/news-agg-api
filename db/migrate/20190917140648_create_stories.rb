class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :author
      t.string :category
      t.string :url
      t.bigint :time

      t.timestamps
    end
  end
end
