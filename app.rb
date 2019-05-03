require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse
  end 
  
  get '/square/:number' do 
    @number = params[:number].to_i 
    @number = @number ** 2
    @number.to_s
  end 
  
  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    final_string = ""
    @number.times do 
      final_string += @phrase 
    end 
    final_string 
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 
  
  get '/:operation/:number1/:number2' do 
    @num1 = params[:number1].to_i 
    @num2 = params[:number2].to_i 
    @operation = params[:operation]
    if @operation == "add"
      @operation = "+"
    elsif @operation == "subtract"
      @operation = "-"
    elsif @operation == "multiply"
      @operation = "*"
    else
      @operation = "/"
    end 
    @num1.send(@operation, @num2).to_s
  end 
  
end