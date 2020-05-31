require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse
  end

  get '/square/:number' do
    @num = params[:number]
    "#{@num.to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phrase = params[:phrase]
    "#{@phrase * @num.to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = params.values
    "#{@words.join(' ')}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    if @operation == 'add'
      "#{@num1.to_i + @num2.to_i}"
    elsif @operation == 'subtract'
      "#{@num1.to_i - @num2.to_i}"
    elsif @operation == 'multiply'
      "#{@num1.to_i * @num2.to_i}"
    elsif @operation == 'divide'
      "#{@num1.to_i / @num2.to_i}"
    end
  end

end