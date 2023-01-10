Why hidden input types?

How can you render info when provided a show action in the user controller?

To render information when provided with a show action in a user controller, you can follow these steps:

Define the show action in your user controller:
Copy code
def show
@user = User.find(params[:id])
end
Create a view template for the show action. The template should be located at app/views/users/show.html.erb (assuming you are using the ERB template engine).

In the view template, use the instance variables defined in the controller action (in this case, @user) to display the desired information. For example:

Copy code

<h1>User Information</h1>

<p>Name: <%= @user.name %></p>
<p>Email: <%= @user.email %></p>
When a user visits the /users/:id URL (where :id is the ID of the user), the show action will be triggered and the view template will be rendered, displaying the user's information.
It's worth noting that the exact steps may vary depending on the specific framework and programming language you are using.

What happens when you type google.com

views are made of HTML CSS and JS

reaching into our backend

ERB tags not visible to the user
don't use puts or prints tabs with erb
comments don't work with erb
must add <&# > or <#%= >

dynamic segment == wildcard

main takeaway any @vars are going to be available within views of the same controller action

partials

HTMLERB templete to create or update an instance of data
they simply render templates that contain forms
all they do is render a form

FORM ANATOMY
1 action (aka path/rails helper)
2 HTTP method (ex: POST)
3 inputs witht labels (optional) 4. submit button

Strong Params require nested key value pairs?

Sometimes GET gets forms to edit or create resources.'

Partials example \_form.html.erg

sytax: render <Partial Filename>, options_hash
omit the \_character when inserting the partial's filename

    Options has can contain dat to be passed in
    no instance variable in partials
    hidden inputs are great for passing along informatio to params that doesn't need to be specididiced by the user.
