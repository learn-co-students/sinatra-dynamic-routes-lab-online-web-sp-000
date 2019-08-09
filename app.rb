require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse 
  end
  
  get '/square/:number' do
    @square = :number.to_i * :number.to_i 
    @square.to_s
    "#{@square}"
  en
  
  get '/say/:number/:phrase' do
    
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    
  end
  
  get '/:operation/:number1/:number2' do
    
  end

end