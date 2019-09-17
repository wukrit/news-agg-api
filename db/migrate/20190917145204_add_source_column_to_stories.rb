class AddSourceColumnToStories < ActiveRecord::Migration[6.0]
  def change
    add_column :stories, :source, :string
  end
end
