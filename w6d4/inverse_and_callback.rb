# example of inverse_of 

class User < ApplicationRecord
    has_many :comments, foreign_key: :author_id, inverse_of: :author
  end
  # if either part of a bi-directional association includes a foreign_key option, add an inverse_of option to the has_many / has_one association.
  
class Comment < ApplicationRecord
    belongs_to :author, class_name: :User
end


# A through option will also prevent Rails from automatically setting an inverse. The lack of an inverse in this situation, however, produces a somewhat different problem. In this case, you should check whether or not the through references a join table (as opposed to, e.g., nested has_many associations). If it does, then you should add inverse_of to the belongs_to association on the join model, like this:

class Like < ApplicationRecord
  belongs_to :user, inverse_of: :likes
  belongs_to :post, inverse_of: :likes
end

class User < ApplicationRecord
  has_many :posts
  has_many :likes
  has_many :liked_posts, through: :likes, source: :post # i.e., posts that the user has liked
end

class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :likers, through: :likes, source: :user
end



# if you are ever in doubt as to whether or not you need to apply an inverse_of option, go ahead and apply it.

# a callback is a method that you set to run before, around, or after one of the life-cycle events. For example, the dependent: :destroy option on an association effectively registers a destroy callback to be run on the object's dependents before destroy is run on the original object.

# You can hook into any of the listed model life-cycle events. To achieve this, you implement the functionality that you want to run as an ordinary method and then use a macro-style class method to register it as a callback:

class User < ApplicationRecord
  validates :random_code, presence: true
  before_validation :ensure_random_code

  protected
  def ensure_random_code
    # assign a random code
    self.random_code ||= SecureRandom.hex(8)
  end
end
# The above code registers a callback to ensure the random_code attribute is set before performing validations on the object. This helps the user: if they forget to specify a random_code, you'll conveniently make one for them.

# It is considered good practice to declare callback methods as protected or private. If left public, they could be called from outside the model, which would violate the principle of object encapsulation.

# There are many available Active Record callback registration macros. Here are a few of the most common:

# before_validation (handy as a last chance to set forgotten fields)
# after_create (handy for performing some post-create logic, like sending a confirmation email)
# after_destroy (handy for performing post-destroy clean-up logic)
# You can further specify that the callback should be called only when performing certain operations:

class CreditCard < ApplicationRecord
  # Strip everything but digits, so the user can specify "555 234 34" or
  # "5552-3434"; both will mean "55523434".
  before_validation(on: :create) do
    self.number = number.gsub(/[^0-9]/, '') if number.present?
  end
end
# This callback will only run when creating the object; validations before subsequent saves will not perform this check.