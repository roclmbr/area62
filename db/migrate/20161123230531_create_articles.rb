class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
       t.string :title
       t.text :description
       t.string :user_id
        t.string :category
        
       t.timestamps    
    end
  end
end
