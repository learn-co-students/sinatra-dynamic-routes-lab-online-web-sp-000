require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    @name.split("").reverse.join("")
  end
  
  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num*@num}"
  end
  
  get '/say/:number/:phrase' do
    erb :say_number_phrase
  end
  
  get'/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get'/:operation/:number1/:number2' do
    erb :operation_number1_number2
  end
  

end