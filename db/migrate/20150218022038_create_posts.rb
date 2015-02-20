class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.date :travel_date

      t.timestamps null: false
    end
  end
end
