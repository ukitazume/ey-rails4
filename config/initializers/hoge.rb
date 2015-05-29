require 'yaml'

Rails.application.config.before_eager_load do
  class Hoge
    hoge = Rails.application.secrets.hoge_key
    fail 'hogehogge' if hoge.nil?
  end
end
