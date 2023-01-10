Dynamic Finders
You've seen how to use where to retrieve an array of Active Record objects matching some conditions. Sometimes, you want to find the single object that matches some criteria; you want to dispense with the array (which in this case will be either empty or length 1). You use ::find and ::find_by for this:

Application.find_by(email_address: 'ned@appacademy.io')

# returns the record whose email_address matches "ned@appacademy.io"

Application.find(4)

# returns the record with id 4

::find accepts a single argument: the id of the record you're looking for. ::find_by accepts an options hash, which allows you to specify as many criteria as necessary.

An important difference to note is that ::find will raise an ActiveRecord::RecordNotFound exception if you search for a nonexistent record, whereas ::find_by will simply return nil. Don't let that scare you

Group, Having
You can apply GROUP BY and HAVING clauses.

UserPost
.joins(:likes)
.group('posts.id')
.having('COUNT(\*) > 5')
Aggregations
You can perform all the typical aggregations:

Client.count
Orders.sum(:total_price)
Orders.average(:total_price)
Orders.minimum(:total_price)
Orders.maximum(:total_price)

order, group, and having
Ordering
To retrieve records from the database in a specific order, you can use the order method.

Client.order('orders_count ASC, created_at DESC').all

order, group, and having
Ordering
To retrieve records from the database in a specific order, you can use the order method.

Client.order('orders_count ASC, created_at DESC').all
