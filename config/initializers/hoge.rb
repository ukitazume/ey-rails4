Rails.application.config.middleware.use "" do
  hoge = Rails.application.secrets.hoge_key
  fail 'hogehogge' if hoge.nil?
end
