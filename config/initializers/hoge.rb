require 'yaml'
Rails.application.config.to_prepare do
  class Hoge
    hoge = Rails.application.secrets.hoge_key
    fail 'hogehogge' if hoge.nil?
  end
end
