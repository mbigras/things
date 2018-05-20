require 'sinatra'
require 'json'

things = [{"id"=>"1", "name"=>"foo"}, {"id"=>"2", "name"=>"bar"}, {"id"=>"3", "name"=>"baz"}]

before do
  headers( "Access-Control-Allow-Origin" => "*" )
end

get '/things' do
  things.to_json
end