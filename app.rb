require_relative 'config/environment'

require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    reverse = @name.reverse
    "#{reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    sq = @num * @num
    "#{sq}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @num = @num.to_i
    @phrase = params[:phrase]
    @phrase = @phrase.tr("%", " ")
    rString = ""
   # binding.pry
   i = 0
    until (i == @num) do
      rString = rString + @phrase
      i = i + 1
    end
    "#{rString}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    rString = @w1 + " " + @w2 + " " + @w3 + " " + @w4 + " " + @w5 + "."
    "#{rString}"
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    @num1 = @num1.to_f
    @num2 = @num2.to_f
    if (@op == "add")
      answer = @num1 + @num2 
    elsif (@op == "subtract")
      answer = @num1 - @num2
    elsif (@op == "multiply")
      answer = @num1 * @num2
    else
      answer = @num1 / @num2
    end
    answer = answer.to_s
    "#{answer}"
  end




end