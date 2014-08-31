Bundler.setup

require 'sinatra'
require 'sass'
require_relative 'ideas'

set :root, File.expand_path("../..", __FILE__)

get '/' do
  @idea  = IDEAS.sample
  erb :index
end

get "/css/:name.css" do
  scss :"scss/#{params[:name]}", style: :compressed
end
