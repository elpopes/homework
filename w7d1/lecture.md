Securely Store PW

Hashing:
One-way: can't reproduce input from output
determinsitic: same input produces same output
Uniform: reduce hash collisions; pigeon-hole problem
Sensitive: small change makes big changes

"entropy" : the use of the term "entropy" in password security is derived from the field of thermodynamics, where it refers to a measure of randomness or disorder. It was chosen as a way to describe the randomness or unpredictability of a password in a way that is easy to understand and communicate.

Salting:
adds entropy by pairing with a random string

New User Schema:
id, integer not null, primary key
username string not null, indexed, unique
password_digest string not null
session_token string not null, indexed, unique

3 key auth functionality
sign up new users
login existing users
logout user

Relevant Routes for Sign Up
Sign up
resources :users, only: [:new, :create]

In Pry this will give a list of methods available
User.new.methods.grep(/username/)

SIDENOTE: !!current_user will give you a true or false depending on if current user

In the context of password security, the term "entropy" refers to the randomness or unpredictability of a password. A password with high entropy is more difficult to guess or crack because it is less predictable.

In general, the strength of a password is determined by its length and the number of different characters it contains. A password that is longer and includes a variety of different character types (such as uppercase and lowercase letters, numbers, and special characters) is considered to have a higher level of entropy, and is therefore more secure.

The concept of entropy is often used to measure the strength of a password, with higher levels of entropy being more secure. For example, a password that is a random string of characters is generally considered to have a higher level of entropy than a password that is a dictionary word or a commonly used phrase.

In summary, the use of entropy in password security refers to the randomness or unpredictability of a password, which is an important factor in determining its strength and resistance to being guessed or cracked.

Lorenzo Tijerina
why is it called entropy

The term "entropy" in the context of password security comes from the field of thermodynamics, where it refers to a measure of the randomness or disorder of a system. In the context of password security, the concept of entropy is used to measure the randomness or unpredictability of a password, with the idea being that a password with high entropy is more difficult to guess or crack because it is less predictable.

The term "entropy" was chosen to describe the randomness or unpredictability of a password because it is a well-known and widely understood concept in the fields of physics and thermodynamics. It was adopted by computer scientists and security experts as a way to describe the strength of a password in a way that is easy to understand and communicate.

In summary, the use of the term "entropy" in password security is derived from the field of thermodynamics, where it refers to a measure of randomness or disorder. It was chosen as a way to describe the randomness or unpredictability of a password in a way that is easy to understand and communicate.

Lorenzo Tijerina
!
What does it mean the bcrypt scales with computational power, resistant to brute-force
This content may violate our content policy. If you believe this to be in error, please submit your feedback — your input will aid our research in this area.

Bcrypt is a password hashing function that is designed to be resistant to brute-force attacks. In a brute-force attack, an attacker tries to guess a password by trying every possible combination of characters until the correct one is found. Bcrypt is designed to make this type of attack more difficult by taking a long time to compute the hashes of passwords, even on high-performance hardware.

The way that bcrypt scales with computational power is by allowing the user to specify a "work factor" when generating a password hash. The work factor determines how much computation is required to generate the hash, and can be increased as computational power increases. This means that as computers get faster, the work factor can be increased to maintain a consistent level of security.

Bcrypt is considered to be resistant to brute-force attacks because it takes a long time to compute the hashes of passwords, even on high-performance hardware. This means that an attacker trying to guess a password by trying every possible combination of characters would have to spend a significant amount of time and resources to do so. As a result, bcrypt is often used to store passwords in a secure manner, as it makes it more difficult for an attacker to gain access to the original password.

Lorenzo Tijerina
what does binding mean in context of binding_of_caller

In the context of the binding_of_caller method in Ruby, the term "binding" refers to an object that represents the context in which a method is being executed. This includes information about the local variables, instance variables, and method arguments that are available at the time the method is called.

The binding_of_caller method is used to retrieve the binding of the caller of a method. This means that it returns an object representing the context in which the calling method was executed, including information about the local variables, instance variables, and method arguments that were available at the time the calling method was called.

Here's an example of how binding_of_caller might be used:

Copy code
def foo
binding_of_caller
end

def bar
b = foo

# b is now a binding object representing the context in which bar was called

end
In this example, when foo is called from within the bar method, it returns a binding object representing the context in which bar was called. This allows foo to access information about the local variables, instance variables, and method arguments that were available to bar at the time it was called.

Overall, the term "binding" in the context of binding_of_caller refers to an object that represents the context in which a method is being executed, including information about the local variables, instance variables, and method arguments that are available at the time the method is called.

why do you have to use type hidden to patch

It is not always necessary to use the type="hidden" attribute when patching a form. The type="hidden" attribute is used to create a form input field that is not visible to the user, but that is sent along with the form when it is submitted.

There are several reasons why a developer might choose to use the type="hidden" attribute when patching a form:

To pass additional data to the server: The type="hidden" field can be used to pass additional data to the server that is not visible to the user. This might include data that is required for the server to process the form submission, but that the user does not need to see or interact with.

To preserve the state of a form: If a form includes input fields that are dynamically generated or modified by the user, the type="hidden" field can be used to preserve the state of the form as it was when the user submitted it. This can be useful if the form needs to be reloaded or redisplayed to the user after submission.

To prevent tampering: The type="hidden" field can be used to include data in the form submission that the user should not be able to modify. This can help to prevent tampering with the form submission and ensure that the data submitted to the server is valid.

Overall, the decision to use the type="hidden" attribute when patching a form will depend on the specific requirements of the form and the data being submitted.
