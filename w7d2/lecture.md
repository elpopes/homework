# CROSS SITE REQUEST FORGERY (CSRF)

## rails protects

## Why do we need to allow_nil: true to password validation?

every time the user logs out they wont send the password in the params.

## why do we call self.save! in reset_session_token!?

to get a big error so we know it didn't work.

## Why do we reset the user's session token in the db instead of setting to nil?

prevents mismatches, because we look up users the session cookie.

1. this is a thing
2. this is another things
3. and this thing too

#

#

# Errors with flash and flash.new

### mostly used to handle errors.

## two different ways to use flash

1. flash errors for just that instance
2. could also last through next request cycle.
