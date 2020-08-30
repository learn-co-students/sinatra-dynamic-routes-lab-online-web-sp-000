require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end
  get '/square/:num' do
    @square = params[:num].to_i
    number = @square * @square
    "#{number}"
  end
  get '/say/:num/:phrase' do
    @phrase = params[:phrase]
    @num = params[:num].to_i
    string = ""
    @num.times do
      string << @phrase
    end
    "#{string}"
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @say = params[:say]
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @say = @word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5 + "."
    @say
  end
  get '/:operation/:num1/:num2' do
    @operation = params[:operation]
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    result = 0
    if @operation == "add"
      result = @num1 + @num2
    elsif @operation == "subtract"
      result = @num1 - @num2
    elsif @operation == "multiply"
      result = @num1 * @num2
    elsif @operation == "divide"
      result = @num1 / @num2
    end
    "#{result}"
  end
end