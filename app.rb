require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    name_reversed = params[:name].reverse 
    "#{name_reversed}"
  end

  get '/square/:number' do
    square = params[:number].to_i.pow(2)
    "#{square}"
  end

  get '/say/:number/:phrase' do
    phrase_string = ""
    params[:number].to_i.times do
      phrase_string += params[:phrase]
    end
    phrase_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation].downcase
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if operation == 'add'
      sum = num1 + num2
      "#{sum}"
    elsif operation == 'subtract'
      difference = num1 - num2
      "#{difference}"
    elsif operation == 'multiply'
      product = num1 * num2
      "#{product}"
    elsif operation == 'divide'
      quotient = num1 / num2
      "#{quotient}"
    else
      "This URL can only add, subtract, multiply, divide"
    end
  end


end