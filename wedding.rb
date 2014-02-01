$: << File.expand_path('../lib', __FILE__)

require "sinatra"
require "sinatra/content_for"
require "sass"
require "sass_hack"

get '/' do
  erb :'main.html'
end

get '/stylesheets/*.css' do
  scss :"#{params[:splat].first}", :style => :expanded
end
