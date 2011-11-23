require 'bundler/setup'
require 'sinatra/base'
require 'omniauth-justintv'

class App < Sinatra::Base
  use Rack::Session::Cookie
  use OmniAuth::Builder do
    provider :justintv, ENV['JUSTINTV_KEY'], ENV['JUSTINTV_SECRET']
  end
  
  get '/' do
    redirect '/auth/justintv'
  end

  get '/auth/:provider/callback' do
    request.env.inspect
  end
  
  get '/auth/failure' do
    content_type 'application/json'
    MultiJson.encode(request.env)
  end
end

run App.new