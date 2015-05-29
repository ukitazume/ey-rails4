Rails.application.config.before_configuration do
  p 'ykitazume init'
  if File.exists?("/data/eyrails/shared/config/env.custom")
    Dotenv.load('/data/eyrails/shared/config/env.custom')
  end
  p ENV['HOGE']
  p ENV['RAVEN']
end
