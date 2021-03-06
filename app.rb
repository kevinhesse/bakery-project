require 'sinatra'
require 'sendgrid-ruby'
include SendGrid

get '/' do 
    
    erb :index
end

get '/thankyou' do 
  erb :thankyou
end

get '/cookies' do 
  erb :cookies
end

get '/cakes' do
  erb :cakes
end

get '/muffins' do
  erb :muffins
end

get '/contact' do

    erb :contact
end


post '/contact' do 
    puts params.inspect
    from = Email.new(email:'khesse92@gmail.com')
    to = Email.new(email:'khesse92@gmail.com')
    subject = "Thank you!"
    content = Content.new(type: 'text/plain', value:
    "Thank you for your interest in our products. 
     here is a catalog of everything we have to offer

     Cakes: 
     vanilla
     chocolate
     white
     marble 
     red velvet
     carrot
     flourless chocolate
     devils food

     Cookies:
     chocolate chip
     oatmeal raisin
     macadamia nut
     peanut butter
     rainbow
     sugar
     shortbread
     macaroon
     macaron

     Muffins:
     banana chocolate
     lemon poppy seed
     blueberry
     bran
     corn
     chocolate chip
     double chocolate chip"

     )
     
    mail = Mail.new(from, subject, to, content)
    
    sg = SendGrid::API.new(api_key:ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.body
    # puts response.parsed_body
    puts response.headers
    redirect "/thankyou"
    
end 


