require_relative 'config/environment'

class App < Sinatra::Base
 
    get '/reversename/:name' do 

    @name = params[:name].reverse
    "#{@name}"
    end 
  
    get '/square/:number' do 
  
    @number = params[:number].to_i
    "#{@number ** 2}"
    end 

    get '/say/:number/:phrase' do 
    phrase_array = []
    
    @phrase = params[:phrase]
    @number = params[:number].to_i
    
    @number.times {|x| phrase_array << @phrase}
    new_array = phrase_array.join(" ")
    new_array
    end 

    get '/say/:word1/:word2/:word3/:word4/:word5' do
    
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    word_array = [@word1, @word2, @word3, @word4, @word5]
    word_array.join(" ") + "."
    end 

    get '/:operation/:number1/:number2' do

    @num1 = params[:number1].to_i  
    @num2 = params[:number2].to_i
      @operation = params[:operation]
   
      case @operation
      when "add"
        "#{@num1 + @num2}"

      when "subtract"
        "#{@num1 - @num2}"
        

      when "multiply"
        "#{@num1 * @num2}"
       
      
      when "divide"
        "#{@num1 / @num2}"
      end 
    end 
  end 

