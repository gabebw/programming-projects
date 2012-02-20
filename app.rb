require 'sinatra'
require './ideas'

get '/' do
  idea = IDEAS.sample
  erb :index, layout: :layout,
              locals: { idea: idea }
end

get "/css/:name.css" do
  scss :"scss/#{params[:name]}"
end
