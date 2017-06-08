class AddConnectionIdToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :connection_id, :integer
  end
end
