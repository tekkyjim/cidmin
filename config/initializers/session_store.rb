# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cidmin_session',
  :secret      => 'b6157469fccc962eea2a531cb24ff74e8b7a2325e5428979564311594e27db2d601c3f9cff54d02de95dd019ce3bf963196ea8405627876ab3a7390b1a5dbac9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
