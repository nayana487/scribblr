class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    t.string :name
    t.string :content
    t.string :title
    end
  end
end
