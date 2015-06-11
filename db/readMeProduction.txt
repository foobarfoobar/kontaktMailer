# Lokaler Production-Server

# Aenderungen in config/environments/production.rb
config.serve_static_files = true # statt: ENV['RAILS_SERVE_STATIC_FILES'].present? ABER: So nicht deployen; auch nicht bei Heroku!!
config.consider_all_requests_local       = true # Fehlerausgabe

# in config/secrets.yml secret_key_base fuer Production setzen (statt secret_key_base: <%= ENV["SECRET_KEY_BASE"] %>),
# generieren mit rake secret; ABER: so nicht deployen!!

# Assets prekompilieren
RAILS_ENV=production bundle exec rake assets:precompile

# Migration fuer Production-DB:
RAILS_ENV=production bundle exec rake db:create db:migrate

# Server starten
rails s -e production