require 'sinatra'
require 'sendgrid-ruby'
include SendGrid

get '/' do 
"hello world"
end