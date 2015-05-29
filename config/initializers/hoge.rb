require 'yaml'

# Rails.application.config.before_eager_load do
  class Hoge
    HOGE = Rails.application.secrets.hoge_key
    fail 'hogehogge' if HOGE.nil?
  end
# end
