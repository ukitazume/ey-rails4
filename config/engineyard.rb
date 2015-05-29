Rails.application.config.before_initialize do
  if File.exists?("/data/eyrails/shared/config/custom.env")
    Dotenv.load('/data/eyrails/shared/config/custom.env')
  end
end
