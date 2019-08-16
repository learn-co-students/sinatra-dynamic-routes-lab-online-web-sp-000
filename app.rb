require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

get '/reversename/:name' do 
  @name = params[:name].to_s.reverse  
   "#{@name}"
end 

get '/square/:number' do 
  @number = params[:number].to_i 
  squared = @number ** 2 
  squared.to_s 
end 

get '/say/:number/:phrase'do 
  @array = []
  @number = params[:number].to_i 
  @phrase = params[:phrase]
  @array << @phrase 
  @array * @number 
end 

get '/say/:word1/:word2/:word3/:word4/:word5' do 
  @array = []
  @array << @word1 = params[:word1]
  @array << @word2 = params[:word2]
  @array << @word3 = params[:word3]
  @array << @word4 = params[:word4]
  @array << @word5 = params[:word5]
  @array.join(" ").insert(-1, ".")
end 

get '/:operation/:number1/:number2' do 
  @number1 = params[:number1].to_i 
  @number2 = params[:number2].to_i 
  @operation = params[:operation]
  
  if @operation == "add"
    sum = @number1 + @number2
    sum.to_s 
  elsif @operation == "subtract"
    difference = @number1 - @number2
    difference.to_s 
  elsif @operation == "multiply"
    product = @number1 * @number2
    product.to_s 
  elsif @operation == "divide"
    quotient = @number1 / @number2
    quotient.to_s 
  end 
end

end 