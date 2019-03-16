class CommentBelongsToUserAndPost < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :belongs_to
  end
end
