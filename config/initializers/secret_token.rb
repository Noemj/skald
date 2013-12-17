if ENV['SECRET_TOKEN'].present?
  Skald::Application.config.secret_token = ENV['SECRET_TOKEN']
else
  Skald::Application.config.secret_token = ('x' * 30)
end