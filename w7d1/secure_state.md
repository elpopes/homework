Secure State

    http is stateless. You have to send info in request.

Strategies
always consider the worst case senario
how to avoid exposing plain text passwords

Cookies

    pieces of data 4kb in size.
    browser stores cookies
    giant hash map
    keep state on computer
    can only have 20 cookies
    sent in the header
    can store a cart_id

    session token associated with user right now. Has random bits
    logging out deletes the session token.

Authentication

Encoding, encrypting
if you know how to encode something then you know how to decode it.
Ceaser Cypher is an example of encryption. With encryption you need a key.
encoding example is a3bc3a...
encoding and compression are related
base 64 encoding

Hashing
enter anything into a hashing function, as long as it can be turned into binary
out of the hashing function comes another number.
Hashing function are one way.
digest = hash output
cyrptographic hashing functions minimize hashing collisions
Bcrypt(Blowfish) to create

Salting
Users are stupid (again)
salt is random bits
add the salt
store the user, the password digest and the salt.

BCRYPT
require 'bcrypt'
BCrypt::Password.create("hunter12")
Bcrypt::Password.new(_.to_s)
_.is_password?("hunter12)

questions:
entropy with security?

Session
params, hash that's avialable
can set a session_token is a cookie. tamper proof cookie.
session[:session_token]
session[:lang] = "english"
flash
20 years is the longest life of a cookie
flash[:user_error] = "username can't be blank
flash lives for one more request.
flash.now[:user_error] persists for just this request

Singular resources
In Rails' routes.rb file, you can use the resources method to quickly declare all of the RESTful routes for a given controller.

Rails also provides a resource (singular) method that you can use to declare routes for resources you will access without :ids, that is, resources where a user will only ever access one. In your auth pattern, you use a singular resource session because a user only interacts with one session (i.e., their own).

NB: Although your routes may be "singular" when you declare them with resource, you should still follow the 'plural control names' convention. In this case, your controller is named SessionsController despite routing through /session. Controller names are always plural.

For more on singular resources see the Rails Docs.
