class CreateYoyoyoPosts < ActiveRecord::Migration
  def change
    create_table :yoyoyo_posts do |t|
      t.string :name
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
