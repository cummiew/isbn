# myapp.rb
require 'sinatra'
require_relative 'isbn.rb'


get '/' do
erb :input
#   'greetings!'
end

post '/isbnnum' do 
	num = params[:isbn]
	results = valid_isbn?(num)
	"answer is #{results}"
end

