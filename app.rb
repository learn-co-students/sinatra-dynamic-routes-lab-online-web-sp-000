require "pry"
require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    @user_name = params[:name]
    @user_name.reverse
  end
  
  get "/square/:number" do
    @user_num = params[:number]
   number = @user_num.to_i
   square = number** 2
   square_string = square.to_s
    square_string
  end 

  get "/say/:number/:phrase" do 
    @user_num = params[:number]
    @user_phrase = params[:phrase]
    number = @user_num.to_i
    repeat = ""
    number.times {repeat += @user_phrase}
    return repeat
    end 
    
    get "/say/:word1/:word2/:word3/:word4/:word5" do 
      @word1 = params[:word1]
      @word2 = params[:word2]
      @word3 = params[:word3]
      @word4 = params[:word4]
      @word5 = params[:word5]
      repeat = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
      repeat
    end 
    
    get "/:operation/:number1/:number2" do 
      
      @operation = params[:operation]
      @number1 = params[:number1]
      @number2 = params[:number2]
      number1_i = @number1.to_i
      number2_i = @number2.to_i
      if @operation == "add"
        answer = number1_i + number2_i
        #binding.pry
        elsif 
        @operation == "subtract"
        answer = number1_i - number2_i
        elsif 
        @operation == "divide"
        answer = number1_i / number2_i
        elsif 
        @operation == "multiply"
        answer = number1_i * number2_i
      end
      string = answer.to_s
      string
    end 
    
  
  
  
end