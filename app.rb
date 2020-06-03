require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end
  
  get '/square/:number' do
    @number = params[:number]
    @square = @number.to_i * @number.to_i
    @square.to_s
  end
  
  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @phrase*@number.to_i
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @word1 + " " + @word2  + " " + @word3 + " " + @word4 + " " + @word5 + "."
  end
  
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    if @operation == "add"
      @total = @number1.to_i + @number2.to_i
      @total.to_s
    elsif @operation == "subtract"
      @total = @number1.to_i - @number2.to_i
      @total.to_s
    elsif @operation == "multiply"
      @total = @number1.to_i * @number2.to_i
      @total.to_s
    elsif @operation == "divide"
      @total = @number1.to_i / @number2.to_i
      @total.to_s
    end
  end
    
end