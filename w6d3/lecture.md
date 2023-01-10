MVC

models:
handles create read update destroy

control

rails router as traffic control.

url is a uniform resource locator

What happens when you go to google and search
a little man looks up the info

browser goes to server; server looks up ip
sends get request
google sends back response

request repsonse cycle
computer is the client or user
makes get request
get http + verb = http.get ?

Http
protocol for comm on internet
requests and responses are just strings
http formats and transmits

Components of http request
parameters
method = http.verb. GET POST

GET /index.html HTTP/1.1
the path is required [this is a link?]
optional:
query string like  
 string
optional:
body: POST /submit HTTP/1.1
Content-Type: application/json

{
"name": "John Doe",
"email": "jdoe@example.com"
}

ip on own machines:
0000

Method and Path are required, conveying key information
What resource and what action are we asking for.

The three ways to send information main ways to send info in request.

There are several different types of HTTP requests, including GET, POST, PUT, DELETE, HEAD, PATCH, and OPTIONS.

GET requests are used to retrieve information from the server, such as a web page or file. These requests do not contain a request body, and the requested data is specified in the URL.

POST requests are used to submit data to be processed by the server, such as uploading a file or submitting a form. These requests typically include a request body containing the data to be processed.

PUT requests are used to update a resource on the server. These requests also typically include a request body containing the updated data.

DELETE requests are used to delete a resource on the server. These requests do not typically include a request body.

HEAD requests are similar to GET requests, but they only request the headers of a response, rather than the full response body.

PATCH requests are used to apply partial modifications to a resource on the server. These requests typically include a request body containing the updated data.

OPTIONS requests are used to request information about the server's capabilities, such as the supported HTTP methods and response headers. These requests do not typically include a request body.

Overall, the type of HTTP request used will depend on the specific action the client wants to perform on the target resource. Different request methods have different meanings and uses, and it's important to choose the appropriate method for each request.

We'll prefer Patch for the course.

What's a controller action?

In the context of web development, a controller action is a specific method of a controller that handles a particular request. A controller is a type of program that receives incoming requests from a client and determines how to handle them. In an MVC (Model-View-Controller) application, the controller is responsible for coordinating the flow of data between the model, which represents the application's data, and the view, which presents the data to the user.

Controller actions are methods of a controller that are responsible for handling specific requests. For example, a controller for a blog might have actions for creating a new post, viewing an existing post, and deleting a post. Each of these actions would be defined as a separate method of the controller, and the controller would dispatch each incoming request to the appropriate action method based on the request type and URL.

In general, controller actions are used to define the behavior of a web application in response to different types of requests from clients. They provide a way for developers to organize and modularize the different aspects of an application's functionality, making it easier to maintain and update the application over time.

Get request can have a body but isn't necessary because we don't have to send information up.

The status of the response: 200 302 404
2XX = successful

HTTP RESPONSES ARE STATELESS
In the context of the HTTP protocol, being stateless means that the server does not store any information about the client's session or state. This means that each HTTP request is treated as an independent and self-contained request, and the server does not retain any information about previous requests.

One of the main advantages of being stateless is that it allows the server to process each request independently and in parallel with other requests. This can improve the performance and scalability of the server, as it doesn't need to maintain any state information and can handle multiple requests simultaneously.

Another advantage of being stateless is that it simplifies the architecture of web applications. Because the server doesn't need to store any state information, the application can be composed of multiple independent components that can be deployed and scaled independently.

However, being stateless also has some disadvantages. For example, it can make it difficult to implement certain features that require information about the client's session, such as authentication and shopping carts. In these cases, developers must use other mechanisms, such as cookies or URL parameters, to maintain state information.

Overall, the stateless nature of HTTP allows for efficient and scalable web application development, but it also introduces some limitations and challenges that developers must consider when designing and implementing web applications.

Info is stored in db, cookies or locally.

REST stands for representational state transfer.

Controllers are instances of the controller class.
one controller per one resource
Resource is a table

ONE THING:
A ROUTE IS A COMBO OF A METH AND A PATH THAT DETERMINES WHICH CONTROLLER AND WHICH ACTION SHOULD HANDLE THE REQUEST. ACTIONS ARE IN THE CONTROLLER

RESTful routes are the URLs that a RESTful web service exposes in order to provide access to the resources it manages. These routes are designed to be intuitive and meaningful, and they follow a consistent pattern that allows clients to easily understand how to access and manipulate the resources.

In a RESTful web service, each resource is typically associated with a unique URL, and the HTTP methods (GET, POST, PUT, DELETE, etc.) are used to define the operations that can be performed on the resource. For example, a blog service might expose the following routes:

GET /posts: Retrieve a list of all posts
POST /posts: Create a new post
GET /posts/:id: Retrieve a specific post
PUT /posts/:id: Update an existing post
DELETE /posts/:id: Delete an existing post
Each of these routes represents a specific resource, and the HTTP method specifies the operation that can be performed on the resource. For example, the GET /posts route allows the client to retrieve a list of all posts, while the POST /posts route allows the client to create a new post.

Overall, RESTful routes are an important part of a RESTful web service, as they provide a consistent and intuitive way for clients to access and manipulate the resources managed by the service.

In the Ruby on Rails web development framework, a route is a mapping between a URL and the controller action that will be called to handle the request. Rails uses a routing system to determine which controller and action to invoke for a given request, and this routing is defined in a set of routes files.

For example, a route might look like this:

Copy code
get '/posts', to: 'posts#index'
This route specifies that when a GET request is received for the URL /posts, the index action of the posts controller will be called to handle the request. The posts controller would contain the code to retrieve a list of all posts from the database and return them to the client.

In Rails, routes are typically defined in the config/routes.rb file, and they can be organized into different sections to make the routing more modular and maintainable. Rails also provides a set of helper methods, such as resources and namespace, that can be used to define routes in a more concise and expressive way.

Overall, routes are an important part of the Rails web development framework, as they provide a way to map URLs to controller actions and define the behavior of the application in response to different types of requests.

Every action results in a single repsonse

JSON, or JavaScript Object Notation, is a lightweight data interchange format that is used to transmit data between systems. JSON is a text-based format, and it is designed to be easy for humans to read and write, as well as easy for machines to parse and generate.

JSON is based on a subset of the JavaScript programming language, and it is often used in web development as an alternative to XML. JSON is a popular data format because it is simple, lightweight, and easy to work with, and it is supported by a wide range of programming languages and tools.

JSON data is represented as a collection of key-value pairs, where the keys are strings and the values can be any of the following data types:

Numbers (integer or floating-point)
Strings
Booleans (true or false)
Arrays (ordered lists of values)
Objects (unordered collections of key-value pairs)
null (the absence of a value)
Here is an example of a JSON object that represents a person:

Copy code
{
"name": "John Doe",
"email": "jdoe@example.com",
"age": 34,
"skills": ["JavaScript", "Ruby", "PHP"],
"is_employed": true
}
This object has five key-value pairs, where the keys are name, email, age, skills, and is_employed, and the values are a string, a string, a number, an array, and a boolean, respectively.

Overall, JSON is a widely-used and versatile data format that is well-suited for use in web development and other contexts where data needs to be transmitted and parsed between systems.

what's the diff between only and except when building routes

In the Ruby on Rails web development framework, the only and except options can be used when defining routes to specify which controller actions should be included or excluded from the route.

The only option is used to specify a whitelist of controller actions that should be included in the route. For example, the following route would only match requests for the index and show actions of the posts controller:

Copy code
resources :posts, only: [:index, :show]
In contrast, the except option is used to specify a blacklist of controller actions that should be excluded from the route. For example, the following route would match all actions of the posts controller except for the new and edit actions:

Copy code
resources :posts, except: [:new, :edit]
Overall, the only and except options are useful for fine-tuning the behavior of a route and controlling which controller actions are included or excluded from the route. These options can help to make the routing of a Rails application more modular and maintainable.

User authentication large portion of assessment

In the Ruby on Rails web development framework, the only and except options can be used when defining routes to specify which controller actions should be included or excluded from the route.

The only option is used to specify a whitelist of controller actions that should be included in the route. For example, the following route would only match requests for the index and show actions of the posts controller:

Copy code
resources :posts, only: [:index, :show]
In contrast, the except option is used to specify a blacklist of controller actions that should be excluded from the route. For example, the following route would match all actions of the posts controller except for the new and edit actions:

Copy code
resources :posts, except: [:new, :edit]
Overall, the only and except options are useful for fine-tuning the behavior of a route and controlling which controller actions are included or excluded from the route. These options can help to make the routing of a Rails application more modular and maintainable.

A wildcard, or wildcard character, is a special character that can be used in a route to match any character or sequence of characters. Wildcards are often used in routes to match variable or optional parts of a URL, such as an ID or a query parameter.

For example, a route with a wildcard might look like this:

Copy code
get '/posts/:id', to: 'posts#show'
In this route, the :id part is a wildcard that matches any sequence of characters after the /posts/ part of the URL. For example, a request for the URL /posts/123 would match this route, and the show action of the posts controller would be called with the id parameter set to 123.

Wildcards are useful in routes because they allow the route to match a wide range of URLs without having to define a separate route for each possible variation. This can make the routing of a Rails application more concise and maintainable.

Overall, wildcards are a useful tool for defining routes in a Rails application, and they can be used to match variable or optional parts of a URL in order to provide more flexible and scalable routing.

There are several ways to send information in an HTTP request, depending on the type of the request and the nature of the information. Here are some common ways to send information in an HTTP request:

Query parameters: Query parameters are added to the URL of the request and are used to send small amounts of data, such as search keywords or filter criteria. Query parameters are separated from the URL by a ? character, and they are specified as key-value pairs separated by & characters. For example: /posts?keyword=rails&page=2
Request body: The request body is used to send large amounts of data, such as the contents of a form or the data for a file upload. The request body is specified after the headers in the request, and it is typically encoded using a format such as JSON or XML.
Headers: HTTP headers are used to send additional information about the request, such as the type and encoding of the request body, the client's accepted response types, and any authentication credentials. HTTP headers are specified in the request before the request body, and they are organized into key-value pairs.
Cookies: Cookies are small pieces of data that are stored by the client and sent to the server with each request. Cookies are typically used to maintain state information, such as authentication credentials or user preferences.
Overall, there are several ways to send information in an HTTP request, and the appropriate approach will depend on the specific needs of the request and the nature of the information being sent.

A controller is a device that allows a person to control a machine or a system. It typically takes input from the user and translates it into commands that the system can understand and execute. Controllers are used in a wide variety of applications, including computers, video game consoles, and industrial machinery. They are an essential part of many modern systems, as they allow people to interact with the system and perform a wide range of tasks.

There are several ways that information can be sent in a request, depending on the specific requirements and circumstances. Here are three common methods:

Query parameters: Query parameters are added to the end of a URL and are used to provide additional information to the server. For example, a search query might include a query parameter like "?q=keyword" to specify the search term.

Request headers: Request headers are additional pieces of information that are sent along with the request to provide additional context. For example, a request header might specify the type of content that the client is expecting in the response, or the authentication credentials of the user making the request.

Request body: The request body is the main part of the request and is used to send data to the server. This data might include form data, JSON or XML payloads, or other types of structured data. The specific format of the request body will depend on the requirements of the server and the type of information being sent.

A render is the process of generating an HTML response to a request, typically by combining a template with data from a database or other source. A redirect, on the other hand, is the process of sending a response to the client that instructs the browser to navigate to a different URL.

Both renders and redirects are common ways of handling requests in web applications. A render is typically used when the server needs to send back a complete HTML page in response to a request, while a redirect is used when the server wants the client to make a new request to a different URL.

For example, if a user makes a request to a web application for a specific page, the server might use a render to generate and send back the HTML for that page. If the user attempts to access a page that they are not authorized to view, the server might use a redirect to send them to the login page instead.

A whitelist is a list of items that are approved or permitted. In the context of computing, a whitelist is often used to refer to a list of approved or safe items, such as IP addresses or websites. In this context, the term "params" may refer to parameters or variables that are passed to a program or function. The relationship between a whitelist and params is that the whitelist may be used to specify which params are allowed or approved for a particular program or function. For example, a program may only accept certain types of input, and a whitelist may be used to define what types of input are allowed. In this case, the params passed to the program would need to be included in the whitelist in order to be accepted.

In the context of computing, "params" is short for "parameters," which are values or variables that are passed to a program or function. These values can be used to control the behavior of the program or function, or to provide input data that the program can process.

A "wildcard" is a symbol that can be used to represent one or more characters in a string. In many programming languages, the wildcard character is the asterisk (\*), which can be used to match any character or sequence of characters. For example, if you have a list of file names and you want to search for files that have a specific string in their names, you could use a wildcard to match any characters that come before or after the string you're looking for.

In the context of params, wildcards may be used to match certain values or patterns in the params passed to a program or function. For example, if a program only accepts certain types of input, you could use a wildcard to match any values that match a particular pattern, such as all numerical values or all alphanumeric strings. This can be useful for ensuring that only valid or approved params are accepted by the program.

The lifecycle of a model instance refers to the sequence of events that occur from the time the model is created until the time it is no longer in use. The specific steps in the lifecycle of a model will depend on the specific model and the context in which it is used, but some common steps in the lifecycle of a model might include the following:

Creation: The model is created, either by training a new model from scratch or by using a pre-existing model.

Configuration: The model is configured with the appropriate settings and parameters, such as the type of training data to use or the specific algorithms to apply.

Training: The model is trained using a set of training data, which may be labeled or unlabeled. During training, the model learns to make predictions or decisions based on the input data.

Evaluation: The model is evaluated to assess its performance and accuracy. This may involve using a separate test dataset or other evaluation metrics to gauge the model's effectiveness.

Deployment: The model is deployed in a production environment, where it can be used to make predictions or decisions on real-world data.

Maintenance: The model is maintained and updated over time, either by retraining the model with new data or by adjusting the model's parameters to improve its performance.

Retirement: The model is retired and no longer used, either because it is no longer needed or because it has been replaced by a newer or more effective model.

The length of time that a model instance is in use will vary depending on the specific model and the context in which it is used. Some models may be in use for a relatively short period of time, while others may be in use for much longer.

The terminal commands that you would use to build controllers in Rails will depend on the specific version of Rails you are using and the specific steps you are following to create your controllers. However, some common commands that you might use include the following:

rails new: This command is used to create a new Rails project. When you run this command, it will create a new directory with the necessary files and directories for a Rails project.

rails generate controller: This command is used to generate a new controller in a Rails project. When you run this command, it will create a new controller file with the specified name and any necessary helper files.

rails server: This command is used to start the Rails server, which is a web server that allows you to run your Rails application in a web browser.

rails routes: This command is used to display the routes that have been defined in your Rails project. Routes define the URLs that can be used to access different parts of your application, and this command can be used to view and manage these routes.

rails console: This command is used to open the Rails console, which is an interactive command-line interface for your Rails application. You can use the console to run commands and interact with your application in real time.

These are just a few examples of terminal commands that might be used to build controllers in Rails. There are many other commands and tools that you can use, and the specific commands that you will need to use will depend on the specific version of Rails you are using and the specific steps you are following to create your controllers.

can i add variables to rails generate controller?
Yes, you can add variables to the rails generate controller command in order to specify the name and other details of the controller that you want to generate. For example, you might use the following command to generate a new controller called UsersController:

Copy code
rails generate controller Users
In this example, Users is the name of the controller that will be generated. You can also specify additional options and arguments after the controller name to customize the controller that is generated. For example, you can use the --actions option to specify the actions that should be included in the controller, or the --no-helper option to specify that a helper file should not be generated for the controller.

To see a full list of options and arguments that you can use with the rails generate controller command, you can run the following command:

Copy code
rails generate controller --help
This will display a list of all the available options and arguments that you can use with this command. You can then use these options and arguments to customize the controller that is generated to meet your specific needs.

In the context of building controllers in Rails, the .find method can be used to retrieve a specific record from the database. This method is commonly used in controller actions to retrieve a specific record based on its primary key, or ID. For example, if you have a UsersController that manages users in your application, you might use the .find method in an action to retrieve a specific user based on their ID:

Copy code
def show
user = User.find(params[:id])
end
In this example, the .find method is used to retrieve a user with the ID specified in the params hash. This ID is typically passed as part of the URL for the action, and the .find method uses this ID to look up the corresponding user in the database. Once the user has been retrieved, it can be used in the action to perform any necessary operations, such as displaying the user's details or updating their information.

The .find method can be useful when building controllers in Rails because it allows you to easily retrieve specific records from the database based on their primary keys. This can be especially useful when building RESTful APIs, where the primary key is often used to identify the specific resource that an action should operate on.

In Rails, the .find method and the .find_by method are both used to retrieve records from the database. However, there are some key differences between these two methods.

The .find method is used to retrieve a specific record based on its primary key, or ID. For example, if you have a User model with a primary key of 1, you could use the .find method to retrieve this record as follows:

Copy code
user = User.find(1)
The .find_by method, on the other hand, is used to retrieve a record based on one or more attributes of the record. For example, if you want to find a user with a specific email address, you could use the .find_by method as follows:

Copy code
user = User.find_by(email: "user@example.com")
In this example, the .find_by method is used to retrieve the user with the specified email address. Unlike the .find method, which only accepts a single argument (the primary key), the .find_by method can accept any number of attributes and values, allowing you to specify more complex queries to find the records you're looking for.

In general, the .find method is faster and more efficient than the .find_by method, because it only has to search the primary key index in the database. However, the .find_by method is more flexible and allows you to specify more complex queries to find the records you need. The specific method that you should use will depend on your specific needs and the data you are working with.

In Rails, the save! method is used to save a record to the database. This method is similar to the save method, but it will raise an error if the record is invalid and cannot be saved. This behavior can be useful for testing Rails applications, because it allows you to ensure that your application is handling invalid records correctly.

To use the save! method for testing in Rails, you can include it in your test code as part of an assertion. For example, if you have a test that checks whether a user can be saved to the database, you might use the save! method as follows:

Copy code
assert_nothing_raised do
user = User.new(name: "John Doe")
user.save!
end
In this example, the save! method is called on a new user record. If the user is valid and can be saved to the database, the save! method will succeed and the block of code will be executed without raising an error. However, if the user is invalid and cannot be saved, the save! method will raise an error, which will be caught by the assert_nothing_raised assertion. This will cause the test to fail, indicating that the user was not saved correctly.

Using the save! method for testing in this way can help you ensure that your application is handling invalid records correctly, and can help you catch any potential errors or problems in your code.

Yes, you can use the save method in a conditional statement in Rails to control the flow of your code based on whether a record is successfully saved to the database. For example, you might use the save method in a conditional statement as follows:

Copy code
user = User.new(name: "John Doe")
if user.save
puts "User saved successfully"
else
puts "User could not be saved"
end
In this example, the save method is called on a new user record. If the user is valid and can be saved to the database, the save method will return true, and the code in the if block will be executed. This will print a message indicating that the user was saved successfully. However, if the user is invalid and cannot be saved, the save method will return false, and the code in the else block will be executed. This will print a message indicating that the user could not be saved.

You can use this pattern to control the flow of your code based on whether a record is successfully saved to the database. This can be useful for handling different scenarios in your application, and can help you ensure that your code is robust and can handle a variety of different conditions.
