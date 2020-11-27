require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    (@num *= @num).to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @string = ""
    @num.times{@string<<@phrase}
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @phrase = []
    @phrase << @word1
    @phrase << @word2
    @phrase << @word3
    @phrase << @word4
    @phrase << @word5
    @phrase.join(" ")<<"."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation].downcase
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    # binding.pry
    if @operation == "add"
      @num3 = (@num1 + @num2).to_s
    elsif @operation == "subtract"
      @num3 = (@num2 - @num1).to_s
    elsif @operation == "divide"
      @num3 = (@num1 / @num2).to_s
    elsif @operation == "multiply"
      @num3 = (@num1 * @num2).to_s
    end
    @num3
  end
end