require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    params[:name].reverse
  end
  
  get '/square/:number' do 
    @number = params[:number].to_i
    @square = @number*@number
    @square.to_s
  end
  
  get '/say/:number/:phrase' do 
    i = 0 
    @count = params[:number].to_i
    @phrase = [] 
    while i < @count
      @phrase << params[:phrase]
      i+=1
    end
    @phrase
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @sentence = []
    @sentence << params[:word1] 
    @sentence << params[:word2]
    @sentence << params[:word3] 
    @sentence << params[:word4]
    @sentence << "#{params[:word5]}."
    @sentence.join(" ")
  end
  
  get '/:operation/:number1/:number2' do 
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @number3 = 0 
    @operation = params[:operation]
    if @operation == "add"
        @number3 = @number1 + @number2
        @number3.to_s
    elsif @operation == "subtract"
        @number3 = @number1 - @number2
        @number3.to_s
    elsif @operation == "multiply"
        @number3 = @number1*@number2
        @number3.to_s
    elsif @operation == "divide"
        @number3 = @number1/@number2
        @number3.to_s
    end
  end

end