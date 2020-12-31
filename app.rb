require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    reversed_name = @name.reverse
    #binding.pry
    reversed_name
  end

  get '/square/:number' do
    @number = params[:number]
    square_of_number = @number.to_i
    result = square_of_number**2
    #binding.pry
    result.to_s
  end

  get '/say/:number/:phrase' do 
    @number = params[:number]
    @phrase = params[:phrase]
    integer = @number.to_i
    #binding.pry
    @phrase * integer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    space = " "
    period = "."
    @word1 + space + @word2 + space + @word3 + space + @word4 + space + @word5 + period
  end

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case @operation

    when "add"
      (@number1.to_i + @number2.to_i).to_s
    when "subtract"
       (@number1.to_i - @number2.to_i).to_s
    when "multiply"
       (@number1.to_i * @number2.to_i).to_s
    when "divide"
       (@number1.to_i / @number2.to_i).to_s
    end
  end
end