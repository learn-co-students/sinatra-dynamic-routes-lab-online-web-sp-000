require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @num = params[:number]
    @num = @num.to_i
    number = @num * @num
    "#{number.to_s}"
  end

  get '/say/:number/:phrase' do
    number = params[:number]
    phrase = params[:phrase]
    num = number.to_i
    phrase * num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    w = params[:word1]
    w1 = params[:word2]
    w2 = params[:word3]
    w3 = params[:word4]
    w4 = params[:word5]
    "#{w} " +
    "#{w1} " +
    "#{w2} " +
    "#{w3} " +
    "#{w4}."
  end
  
  get '/:operation/:number1/:number2' do
    # binding.pry
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    operation = params[:operation]
    case operation
    when "add"
         (num1 + num2).to_s 
    when "subtract"
       (num1 - num2).to_s
    when "multiply"
      (num1 * num2).to_s
    when "divide"
      (num1 / num2).to_s
    end

    
   end
end