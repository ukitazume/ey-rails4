hoge = Rails.application.secrets.hoge_key
fail 'hogehogge' if hoge.nil?
