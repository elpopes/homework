class AddAgeAndPatoUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :political_affiliation, :string, nill: false
    add_column :users, :age, :integer, null: false
    add_index :users, :political_affiliation
  end
end
