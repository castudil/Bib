ActionMailer::Base.smtp_settings = {
    :address   => "smtp.mandrillapp.com",
    :port      => 587,
    :user_name => ENV['app33381679@heroku.com'],
    :password  => ENV['FfoVaB3exElpHXH9akHCpw'],
    :domain    => 'heroku.com'
  }
ActionMailer::Base.delivery_method = :smtp

MandrillMailer.configure do |config|
  config.api_key = ENV['FfoVaB3exElpHXH9akHCpw']
end