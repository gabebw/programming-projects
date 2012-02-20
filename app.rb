require 'sinatra'
require './ideas'

get '/' do
  IDEAS.sample
end
