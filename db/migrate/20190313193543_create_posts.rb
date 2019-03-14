class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :content
      t.references :subreddit, foreign_key: true

      t.timestamps
    end

    add_index :posts, [:subreddit_id, :created_at]
  end
end
