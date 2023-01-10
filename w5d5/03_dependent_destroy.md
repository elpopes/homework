TL;DR: Instead of applying dependent: :destroy to a has_many :through association, just apply it to the related has_many association. The latter provides exactly the same functionality with less ambiguity.

class User < ApplicationRecord
has_many :posts,
foreign_key: :author_id,
dependent: :destroy
end

class Post < ApplicationRecord
belongs_to :author,
class_name: 'User'
end

The dependent option determines what happens (:destroy) to the associated records--here, :posts--when a User instance is destroyed. (It implements this through a callback, which is just a method that gets called at a certain point in an object's life cycle; here, it's called at destruction.) :destroy is not the only possible option for dependent; :nullify, which will go through and set the relevant foreign keys of the associated records to NULL, is another common choice. For a full list, see the Rails guides.

With dependent: :destroy set, whenever your code seeks to destroy a User instance, Active Record will first go through and destroy all of the user's dependent posts, i.e., every post whose author_id is the id of the user being destroyed. This ensures that that there will never be a foreign_key constraint issue when destroying a User--at least not from the posts table--because every Post instance whose foreign_key constraint would have blocked the deletion will be destroyed before the User instance is destroyed.

Note: Deleting a record directly through the SQL console will not trigger the Rails-based dependent: :destroy callback. (It will, however, trigger any related FOREIGN KEY constraint checks in the database.)

(Before applying dependent: :destroy, make sure that you actually want to destroy the associated records. Using dependent: :nullify or some other dependent option may better suit the particular situation.)

has_many :through associations
You can add dependent: :destroy to a has_many :through association, but only if the :source is a belongs_to association (i.e., not has_many or has_one). Furthermore, it will only destroy the records in the :through association (i.e., the join table), NOT the :source association. So if you have an actors table and a movies table joined by a castings table,

class Movie < ApplicationRecord
has_many :castings

has_many :actors,
through: :castings,
source: :actor,
dependent: :destroy # destroys entries in the `castings` table, # NOT the `actors` table
end
is functionally equivalent to

class Movie < ApplicationRecord
has_many :castings,
dependent: :destroy

has_many :actors,
through: :castings,
source: :actor
end

Pulling it all together: An example
Here is an example using the User (with dependent: :destroy) and Post models from above--and a foreign_key constraint on Post's author_id column--to illustrate how dependent: :destroy works.

First try to delete the first User:

[1] pry(main)> User.first.delete
User Load (0.6ms) SELECT "users".\* FROM "users" ORDER BY "users"."id" ASC LIMIT $1 [["LIMIT", 1]]
User Destroy (46.8ms) DELETE FROM "users" WHERE "users"."id" = $1 [["id", 1]]
ActiveRecord::InvalidForeignKey: PG::ForeignKeyViolation: ERROR: update or delete on table "users" violates foreign key constraint "fk_rails_04d13ef8c7" on table "posts"
DETAIL: Key (id)=(1) is still referenced from table "posts".
The foreign_key constraint kills the deletion. If you try destroy, however, it will run the dependent: :destroy callback and satisfy the constraint:

[2] pry(main)> User.first.destroy
User Load (1.1ms) SELECT "users"._ FROM "users" ORDER BY "users"."id" ASC LIMIT $1 [["LIMIT", 1]]
TRANSACTION (0.2ms) BEGIN
Post Load (0.4ms) SELECT "posts"._ FROM "posts" WHERE "posts"."author_id" = $1 [["author_id", 1]]
Post Destroy (0.3ms) DELETE FROM "posts" WHERE "posts"."id" = $1 [["id", 1]]
Post Destroy (0.3ms) DELETE FROM "posts" WHERE "posts"."id" = $1 [["id", 2]]
Post Destroy (2.4ms) DELETE FROM "posts" WHERE "posts"."id" = $1 [["id", 3]]
User Destroy (1.1ms) DELETE FROM "users" WHERE "users"."id" = $1 [["id", 1]]
TRANSACTION (39.9ms) COMMIT
=> #<User:0x00007fbad9b443a8>
Note what happens under the hood. It first SELECTs the user. Then it grabs the three posts whose author_id is the user's id. Finally, it DELETEs these three posts before performing the requested destruction of the user.

If you remove the foreign_key constraint and the dependent: :destroy, reseed the database, and run destroy again, it behaves very differently:

[1] pry(main)> User.first.destroy
User Load (0.6ms) SELECT "users".\* FROM "users" ORDER BY "users"."id" ASC LIMIT $1 [["LIMIT", 1]]
TRANSACTION (0.1ms) BEGIN
User Destroy (1.8ms) DELETE FROM "users" WHERE "users"."id" = $1 [["id", 1]]
TRANSACTION (41.1ms) COMMIT
=> #<User:0x00007fb0caee4c38>
Now it finds the specified user, and it deletes that user. This leaves that user's posts orphaned in the database:

[2] pry(main)> Post.first
Post Load (0.3ms) SELECT "posts"._ FROM "posts" ORDER BY "posts"."id" ASC LIMIT $1 [["LIMIT", 1]]
=> #<Post:0x00007fb0cad09cb0
id: 1,
title: "Post 1",
body: "Body 1",
author_id: 1,
created_at: Thu, 19 May 2022 21:06:36.348848000 UTC +00:00,
updated_at: Thu, 19 May 2022 21:06:36.348848000 UTC +00:00>
[3] pry(main)> Post.first.author
Post Load (0.4ms) SELECT "posts"._ FROM "posts" ORDER BY "posts"."id" ASC LIMIT $1 [["LIMIT", 1]]
User Load (0.4ms) SELECT "users".\* FROM "users" WHERE "users"."id" = $1 LIMIT $2 [["id", 1], ["LIMIT", 1]]
=> nil
What you've learned
In this reading, you learned how to apply the dependent: :destroy option to a has_many association. (Note: When it comes to dependent: :destroy, you should treat a has_one association just like a has_many association.) This option ensures that, whenever an instance of the model is destroyed, Active Record will first go through and destroy all of the associated records. You also learned the difference between destroy and delete.
