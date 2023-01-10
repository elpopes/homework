# a first migration:
class CreateProducts < ActiveRecord::Migration[7.0]
    def up
        # adds a table called products with string called name
        # and a text column called description
        # primary key will also be added by default
      create_table :products do |t|
        t.string :name
        t.text :description
        # adds timestamps:
        t.timestamps
      end
    end
  
    def down
        # how to rollback the migration, drop table
      drop_table :products
    end
end

# the change method is preferred for adding columns/tables
# no need for a down method
class CreateProducts < ActiveRecord::Migration[7.0]
    # up will run the change and down will reverse it
    def change
      create_table :products do |t|
        t.string :name
        t.text :description
  
        t.timestamps
      end
    end
end

# removing columns using the change method not rollbackable
class CreateProducts < ActiveRecord::Migration[7.0]
    def change
      remove_column :products, :description
    end
end

# to create a new migration run this command:
rails generate migration AddPartNumberToProducts
#creates empty migration...
class AddPartNumberToProducts < ActiveRecord::Migration[7.0]
    def change
        ...
    end
end
# migrations are stored in the db/migrate dir. 
# the form is all like yyyymmddhhhmmss_verbs_dbnamewiths.rb
# name of migration should be like VerbsDbnamewiths

# Changing tables:
# After you create a table, you may wish to modify it. Here are some of the most common methods:

# add_column :table_name, :column_name, :type, options_hash
# remove_column :table_name, :column_name
# rename_column :table_name, :old_column_name, :new_column_name
# rename_table :old_table_name, :new_table_name
# add_index :table_name, [:column1, :column2], options_hash
# change_column :table_name, :column_name, :type, options_hash; you can:
# Change the data type of a column
# Add the option null: false to add a NOT NULL constraint
# Add the option default: value to specify a default value
# For example, to add user_id to the applications table:

def change
  add_column :applications, :user_id, :integer
end

class AddReceiveNewsletterToUsers < ActiveRecord::Migration[7.0]
    def up
        # adds receive news letter column
      change_table :users do |t|
        t.boolean :receive_newsletter, default: false
      end
      User.each do |user|
        # sign up existing users for the newsletter
        user.receive_newsletter = true
        user.save!
      end
    end
  
    def down
      remove_column :users, :receive_newsletter
    end
end