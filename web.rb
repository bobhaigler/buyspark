require 'sinatra'
require 'pony'
configure :production do
  require 'newrelic_rpm'
end

get '/' do
  send_file File.join(settings.public_folder, 'index.html')
end

get '/contact/?' do
  puts "Attempting mail now"
  puts "Using creds:  #{ENV['SENDGRID_USERNAME']}"
  options = {
  :to => 'info@usegratitude.com',
  :from => 'info@usegratitude.com',
  :subject => "New beta user: #{params[:name]}, #{params[:email]}, #{params[:zipcode]}",
  :body => "#{params[:name]}, #{params[:email]}, #{params[:zipcode]}",
  :via => :smtp,
  :via_options => {
    :address => 'smtp.sendgrid.net',
    :port => '587',
    :domain => 'heroku.com',
    :user_name => ENV['SENDGRID_USERNAME'],
    :password => ENV['SENDGRID_PASSWORD'],
    :authentication => :plain,
    :enable_starttls_auto => true
    }
  }
  
  Pony.mail(options)
  
  redirect '/'
end