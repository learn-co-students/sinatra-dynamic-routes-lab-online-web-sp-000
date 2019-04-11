require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do
    name = params[:number].to_i
    "#{name ** 2}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]

    new_phrase = ''
    number.times { new_phrase << phrase }
    new_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params.values.join(' ')}."
  end

  get '/:operation/:number1/:number2' do
    lookup = {add: '+', subtract: '-', multiply: '*', divide: '/'}
    operation, num1, num2 = params[:operation].to_sym, params[:number1].to_i, params[:number2].to_i
    "#{num1.send lookup[operation], num2}"
  end

end
