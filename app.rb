require 'sinatra'
require './ideas'

get '/' do
  idea = IDEAS.sample
  erb :index, locals: { idea: idea }
end
