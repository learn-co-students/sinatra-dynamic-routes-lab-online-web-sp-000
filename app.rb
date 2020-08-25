require "pry"
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    #accepts a name and renders the name backwards
  end

  get '/square/:number' do
    @number = params[:number].to_i ** 2
    "#{@number}"
  end
  #accepts a number and returns the square of that number. Note: Remember that values in params always come in as strings, and your return value for the route should also be a string (use .to_i and .to_s).

  get '/say/:number/:phrase' do
    var = ""
    params[:number].to_i.times do
      var += params[:phrase]
    end
    var
  end

  #accepts a number and a phrase and returns that phrase in a single string the number of times given.

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
      #that accepts five words and returns a string containing all five words (i.e. word1 word2 word3 word4 word5).
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    answer = 'Unable to perform this operation'

    case params[:operation]
    when 'add'
      answer = (number1 + number2).to_s
    when 'subtract'
      answer = (number1 - number2).to_s
    when 'multiply'
      answer = (number1 * number2).to_s
    when 'divide'
      answer = (number1 / number2).to_s
    end
  end
  #accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided, returning a String. For example, going to /add/1/2 should render 3 as a String.
end
