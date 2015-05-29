Rails.application.config.before_initialize do
  env_file_path = "/data/eyrails/shared/config/env.custom"
  if File.exists?(env_file_path)
    Dotenv.load(env_file_path)
  end
end
