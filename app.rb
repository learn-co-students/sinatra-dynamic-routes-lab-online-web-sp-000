require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    name = params[:name]
    name.reverse
  end
  get '/square/:number' do
    number = params[:number].to_i
    number *= number
    number.to_s
  end
  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
    
    phrase * number
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    num = 1
    phrase = ""
    while num <= 5 do
      phrase += params[("word"+num.to_s).to_sym]
      phrase += " "
      num += 1
    end
    phrase.strip + "."
  end
  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    op = params[:operation]
    result = 0
    if op == "add"
      result = num1 + num2
    elsif op == "subtract"
      result = num1 - num2
    elsif op == "multiply"
      result = num1 * num2
    else
      result = num1 / num2
    end
    "#{result}"
  end
end