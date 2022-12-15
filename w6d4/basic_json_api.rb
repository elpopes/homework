

$ rails console
> Wizard.first
=> #<Wizard id: 1, fname: "Harry", lname: "Potter", house_id: 1,
school_id: 1, created_at: "2013-06-04 00:31:04",
updated_at: "2013-06-04 00:31:04">

> Wizard.first.to_json
=> "{\"created_at\":\"2013-06-04T00:31:04Z\",\"fname\":\"Harry\",
\"house_id\":1,\"id\":1,\"lname\":\"Potter\",
\"school_id\":1,\"updated_at\":\"2013-06-04T00:31:04Z\"}"


# Controllers and render json:
# Controllers, too, support responding to a request with JSON.

# Remember that all controller actions must end in some response back to the requestor. That response in Rails is built by calling either render (places something in the response body) or redirect_to (sends a response that asks the requestor to make a whole new request to a different URL).

# Usually, when you call render, you'll specify an HTML template. An HTML template consists of HTML code, with annotations where data can be inserted. You'll learn more about them soon.

# Today you just want to send a JSON representation of a certain object. Easy enough:

class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end
end
# A few things to note:

# The controller specifies that it is rendering JSON with render json:.
# Under the hood, the object you pass will automatically have to_json called on it, so there is no need to explicitly call it on the object.
# to_json works on both collections (arrays) and individual objects.