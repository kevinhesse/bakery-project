require 'sinatra'
require 'sendgrid-ruby'
include SendGrid

get '/' do 
"hello world"
erb :layout
end