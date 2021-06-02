require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do 
    @number = params[:number].to_i
    @squared = @number * @number
    "#{@squared.to_s}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]

    if @operation == "add"
      @operator = :+
    elsif @operation == "subtract"
      @operator = :- 
    elsif @operation == "multiply"
      @operator = :*
    elsif @operation == "divide"
      @operator = :/
    end

    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    # @total = @number1 @operator @number2

    "#{@number1.send(@operator, @number2).to_s}"

  end

end