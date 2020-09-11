require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    erb :reversename
  end

  get '/square/:number' do
    @number = params[:number].to_i
    erb :square
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]
    erb :say
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    erb :operation
  end
end