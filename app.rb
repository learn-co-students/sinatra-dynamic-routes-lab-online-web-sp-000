require_relative 'config/environment'

class App < Sinatra::Base

    get "/reversename/:name" do
      @name = params[:name].reverse
      "#{@name}"
    end

    get "/square/:number" do
      @result = params[:number].to_i * params[:number].to_i
      "#{@result}"
    end

    get "/say/:number/:phrase" do
      @i = 0
      @result = ""
      while @i < params[:number].to_i do
        @result << params[:phrase]
        @i = @i + 1
      end
      "#{@result}"
    end  
    
    get "/say/:word1/:word2/:word3/:word4/:word5" do
      @result = params[:word1]
      @result << " "
      @result << params[:word2]
      @result << " "
      @result << params[:word3]
      @result << " "
      @result << params[:word4]
      @result << " "
      @result << params[:word5]
      @result << "."
      "#{@result}"
    end 
    
    get "/:operation/:number1/:number2" do
      @result = ""
      if params[:operation] == "add"
        @result = params[:number1].to_i + params[:number2].to_i
      elsif params[:operation] == "subtract"
        @result = params[:number1].to_i - params[:number2].to_i
      elsif params[:operation] == "multiply"
        @result = params[:number1].to_i * params[:number2].to_i
      else 
        @result = params[:number1].to_i / params[:number2].to_i
      end
      "#{@result}"
    end     
end