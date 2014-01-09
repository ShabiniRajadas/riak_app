# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
RiakApp::Application.config.secret_key_base = 'b6d740e5f4d8c8224587c5e9939af5133487c4f73cfebca9cd46c715d13a018b1c53ae72a6a42cb01384e2e9040aa63ca371eb534c3c5eb365fa41a2ffeb0fc6'
