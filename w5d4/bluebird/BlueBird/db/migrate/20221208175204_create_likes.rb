class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
        t.integer :liker_id
        t.integer :chirp_id
        t.timestamps
    end
    add_index :likes, :liker_id
  end
end
