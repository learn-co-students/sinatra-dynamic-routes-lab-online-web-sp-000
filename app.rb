require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get 'reversename/:name' do
    @accept_name = params[:name]
    "#{@accept_name.reverse}"
  end

  get '/square/:number'
    @square_num = params[:num].to_i.square 
    "#{square_num.to_s}"
  end

  get '/say/:number/:phrase' do
    
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  
  end

  get '/:operation/:number1/:number2' do

  end

end