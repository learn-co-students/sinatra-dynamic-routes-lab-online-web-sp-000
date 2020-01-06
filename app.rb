require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse 
  end

  get '/square/:number' do
    ((params[:number].to_i)**2).to_s  
  end

  get '/say/:number/:phrase' do
    @times = params[:number].to_i
    @phrase = params[:phrase]

    x = 0
    while x < @times do
      @phrase.to_s
      x += 1
    end


  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  
  end

  get '/:operation/:number1/:number2' do
  
  end



end