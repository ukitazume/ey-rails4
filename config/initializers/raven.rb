Raven.configure do |config|
  p Rails.application.secrets.raven  
  config.dsn = Rails.application.secrets.raven
end
