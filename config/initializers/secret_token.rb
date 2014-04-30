# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
TokenBasedAuthentication::Application.config.secret_key_base = 'f1b95e924fed40f4d416a096fa0e2e38d71feea8ce3767b6f7a3be492f7bd5b8287c933f01900006aad0cf4049705751276e352548f392983d4d34ce10328d63'
