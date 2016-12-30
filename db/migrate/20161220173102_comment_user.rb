class CommentUser < ActiveRecord::Migration[5.0]
  def change
    create_table :comment_user do |t|
        t.string :comment_id
        t.string :user_id
    end
  end
end
