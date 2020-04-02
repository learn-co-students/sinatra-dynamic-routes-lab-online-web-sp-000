require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reverse = params[:name]
    @reverse.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i ** 2
    @num.to_s
  end

# accepts a number and a phrase and returns that phrase in a single string the number of times given.
  get '/say/:number/:phrase' do
    string = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times { string += "#{@phrase}\n"}
    string
  end

# accepts five words and returns a string containing all five words (i.e. word1 word2 word3 word4 word5).
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    string = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    string
  end

  # accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided, returning a String
  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if params[:operation] == "add"
      "#{@number1+@number2}"
    elsif params[:operation] == "subtract"
      "#{@number1-@number2}"
    elsif params[:operation] == "multiply"
      "#{@number1*@number2}"
    else params[:operation] == "divide"
      "#{@number1/@number2}"
    end
  end

end
