Rails magic
You might be wondering why you've never come across this problem before. There's a reason for that, and its name is magic. Whenever you've used nil inside a where before this, Rails just knew how to deal with it:

User.where(email: nil)
This works just fine because Rails detects that email is being compared to NULL and sets up the correct verbiage for SQL. The problem is arising now because you want to negate the comparison, so you're using a SQL fragment. This locks Rails into your pre-set SQL so it can't work its magic.

So how do you make this work? How do you bring back the magic?

You need the magic of where, but the power of !. You need where.not!

User.where.not(id: user.id)
Now Rails is free to do its IS NOT magic without your SQL fragment in the way. This query will work as intended.
