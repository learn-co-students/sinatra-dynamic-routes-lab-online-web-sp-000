require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse!}"
  end

  get '/square/:number' do
    @number = params[:number]
    square = @number.to_i * @number.to_i
    "#{square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    multiplied_phrase =  @phrase * @number.to_i
    "#{multiplied_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    phrase = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    "#{phrase}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    @add = @num1.to_i + @num2.to_i
    @sub = @num2.to_i - @num1.to_i
    @mult = @num1.to_i * @num2.to_i
    @div = @num1.to_i / @num2.to_i

    if @operation == "add"
      "#{@add}"
    elsif @operation == "subtract"
      "#{@sub}"
    elsif @operation == "multiply"
      "#{@mult}"
    else @operation == "divide"
      "#{@div}"
    end 
  end

end
