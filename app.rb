require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    reverse_name = @name.reverse
    "{reverse_name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    square = @num*@num
    "#{square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_1
    @phrase = params[:phrase]
    "#{@phrase*@number}"
  end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  @word1 = params[:word1]
  @word2 = params[:word2]
  @word3 = params[:word3]
  @word4 = params[:word4]
  @word5 = params[:word5]
  "#{@word1} +#{@word2}+ #{@word3} +#{@word4}+ #{@word5}"
end

get '/:operation/:number1/:number2' do
  @operation = params[:operation]
  @num1 = params[:number1].to_i
  @num2 = params[:number2].to_1

  if @opperation == "add"
    result = @num1+@num2
  elsif @opperation == "subtract"
    result = @num1-@num2
  elsif @opperation == "multiply"
    result = @num1*@num2
  elsif @opperation == "divide"
    result = @num1/@num2
  end
  "#{result}"
  end

end


end
