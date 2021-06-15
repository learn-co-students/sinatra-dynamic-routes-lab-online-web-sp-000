require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
  	@backward_name = params[:name].reverse
  	"#{@backward_name}"
  end 
  
  get "/square/:number" do 
    @input_number = params[:number].to_s
    @squared_number = @input_number.to_i ** 2 
    "#{@squared_number}"
  end 
  
  get "/say/:number/:phrase" do 
    @phrase = params[:phrase]
    @number = params[:number]
    @phrase * @number.to_i
  end 
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @word1 = params[:word1] 
    @word2 = params[:word2] 
    @word3 = params[:word3] 
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end 
  
  get "/:operation/:number1/:number2" do
    
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
   
    if operation == "add"  
     (number1 + number2).to_s  
   elsif operation == "subtract"  
       (number1 - number2).to_s  
   elsif operation == "multiply"  
     (number1 * number2).to_s  
   elsif operation == 'divide'  
     (number1 / number2).to_s  
   else  
       'Unable to perform this operation'  
   end  
  
end 


end 
