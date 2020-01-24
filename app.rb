require_relative 'config/environment'

class App < Sinatra::Base

#Create a dynamic route at get '/reversename/:name' that accepts a name and renders the name backwards.
  get '/reversename/:name' do
    #params[:name].reverse
    @name = params[:name]
    "#{@name.reverse}"
  end

#Create a dynamic route at get '/square/:number' that accepts a number and returns the square of that number.
  get '/square/:number' do
    #num = params[:number]
    @number = params[:number]
    "#{@number**2}"
  end

  #Create a dynamic route at get '/say/:number/:phrase' that accepts a number and a phrase and returns that phrase in a single string the number of times given.
  get '/say/:number/:phrase' do
    final_string = ""
    (params[:number].to_i).times do
      final_string += "#{params[:phrase]}\n"
    end
    final_string
  end

  #Create a dynamic route at get '/say/:word1/:word2/:word3/:word4/:word5' that accepts five words and returns a string containing all five words (i.e. word1 word2 word3 word4 word5)
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word = params[:word1,:word2,:word3,:word4,:word5]
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  #Create a dynamic route at get '/:operation/:number1/:number2' that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided, returning a String.
  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    if operation == "add"
      answer = number1 + number2
    elsif operation == "subtract"
      answer = number1 - number2
    elsif operation == "multiply"
      answer = number1 * number2
    elsif operation == "divide"
      answer = number1 / number2
    else
      answer = "Unable to perform this operation"
    end
    answer.to_s
  end

end

end