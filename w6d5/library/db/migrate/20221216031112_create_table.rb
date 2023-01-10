class CreateTable < ActiveRecord::Migration[7.0]
  def change
    create_table :books, force: :cascade do |t|
        t.string :title,   null: false
        t.string :author,  null: false
        t.integer :year  
        t.string :category 
        t.text :description
        t.timestamps
    end
  end
end
