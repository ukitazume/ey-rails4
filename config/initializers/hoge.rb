require 'yaml'

Rails.application.config.before_configuration do
  p 'ykitazume init'
  if File.exists?("/data/eyrails/shared/config/custom.env")
    Dotenv.load('/data/eyrails/shared/config/custom.env')
  end
  p ENV['HOGE']
  p ENV['RAVEN']
end
# Rails.application.config.before_configuration do
#   class Hoge0
#     HOGE = Rails.application.secrets.hoge_key
#     fail 'hogehogge' if HOGE.nil?
#   end
# end
# Rails.application.config.before_initialize do
#   class Hoge1
#     HOGE = Rails.application.secrets.hoge_key
#     fail 'hogehogge' if HOGE.nil?
#   end
# end

Rails.application.config.to_prepare do
  class Hoge2
    HOGE = Rails.application.secrets.hoge_key
    fail 'hogehogge' if HOGE.nil?
  end
end
Rails.application.config.before_eager_load do
  class Hoge
    HOGE = Rails.application.secrets.hoge_key
    fail 'hogehogge' if HOGE.nil?
  end
end
