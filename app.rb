require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do
    num = params[:number]
    (num.to_i**2).to_s
  end
 
# accepts a number and a phrase and returns that phrase in a single string the number of times given
  
  get '/say/:number/:phrase' do
    string = ""
    (params[:number].to_i).times do
      string += "#{params[:phrase]}\n"
    end
    string
  end

# accepts five words and returns a string containing all five words (i.e. word1 word2 word3 word4 word5)

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

# dynamic route at get '/:operation/:number1/:number2' that accepts an operation (add, subtract, multiply or divide) and performs 
# the operation on the two numbers provided, returning a String. For example, going to /add/1/2 should render 3 as a String.

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if operation == 'add'
      solution = num1 + num2
    elsif operation == 'subtract'
      solution = num1 - num2
    elsif operation == 'multiply'
      solution = num1 * num2
    elsif operation == 'divide'
      solution = num1 / num2
    else
      solution = "No can do"
    end
    solution.to_s
  end
end