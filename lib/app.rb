require 'sinatra'
require_relative 'ideas'

set :root, File.expand_path("../..", __FILE__)

get '/' do
  idea  = IDEAS.sample
  index = IDEAS.index(idea)
  erb :index, layout: :layout,
              locals: { idea: idea, index: index }
end

get '/:idea_index' do
  index = params[:idea_index].to_i
  idea  = IDEAS[index]
  erb :show, layout: :layout,
             locals: { idea: idea }
end

get "/css/:name.css" do
  scss :"scss/#{params[:name]}"
end
