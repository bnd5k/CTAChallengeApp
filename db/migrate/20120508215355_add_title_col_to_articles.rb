class AddTitleColToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :title, :string
  end
end
