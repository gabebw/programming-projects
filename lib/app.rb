require 'sinatra'
require_relative 'ideas'

set :root, File.expand_path("../..", __FILE__)

get '/' do
  idea  = IDEAS.sample
  erb :index, layout: :layout, locals: { idea: idea}
end

get "/css/:name.css" do
  scss :"scss/#{params[:name]}", style: :compressed
end
