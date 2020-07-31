require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name]
    reversname = @name.split("").reverse.join("")
  end
  
  get '/square/:number' do 
    @number = params[:number]
    square = "#{@number.to_i ** 2}"
  end
  
  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number]
    # binding.pry
    arr = Array.new(@number.to_i, @phrase)
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    string = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
  
  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    if @operation == "add" 
      expression = "#{@number1.to_i + @number2.to_i}"
    elsif @operation == "subtract"
      expression = "#{@number1.to_i - @number2.to_i}"
    elsif @operation == "divide"
      expression = "#{@number1.to_i / @number2.to_i}"
    elsif @operation == "multiply"
      expression = "#{@number1.to_i * @number2.to_i}"
    end 
  end

end