Rails.application.config.before_configuration do
  if File.exists?("/data/eyrails/shared/config/custom.env")
    Dotenv.load('/data/eyrails/shared/config/custom.env')
  end
end
