require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    name = params[:name]
    name.reverse
  end
  get '/square/:number' do
    number = params[:number].to_i
    number *= number
    number.to_s
  end
  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
    
    phrase * number
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    num = 1
    phrase = ""
    while num <= 5 do
      phrase += params[("word"+num.to_s).to_sym]
      num += 1
    end
  end
end