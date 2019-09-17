class ChangeTimeColumnInStories < ActiveRecord::Migration[6.0]
  def change
    remove_column :stories, :time
    add_column :stories, :time, :string
  end
end
