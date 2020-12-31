require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    "#{params[:name].reverse}"
  end
  
  get "/square/:number" do
    num = params[:number].to_i
    "#{num * num}"
  end
  
  get "/say/:number/:phrase" do
    n = params[:number].to_i
    new_phrase = ""

    while n != 0
      n -= 1
      new_phrase += params[:phrase]
    end
    new_phrase
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get "/:operation/:number1/:number2" do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    solution = ""

    case operation
    when "add"
      solution = (number1 + number2).to_s
    when "subtract"
      solution = (number1 - number2).to_s
    when "multiply"
      solution = (number1 * number2).to_s
    when "divide"
      solution = (number1 / number2).to_s
    else
      "Try using 'add', 'subtract', 'multiply', or 'divide'"
    end
    solution
  end
end