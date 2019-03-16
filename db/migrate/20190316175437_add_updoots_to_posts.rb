class AddUpdootsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :updoots, :integer
  end
end
