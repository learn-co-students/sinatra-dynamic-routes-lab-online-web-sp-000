require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @say = params[:phrase] 
    @number = params[:number].to_i
    "#{@say}" * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sayw1 = params[:word1]
    @sayw2 = params[:word2] 
    @sayw3 = params[:word3] 
    @sayw4 = params[:word4]
    @sayw5 = params[:word5]
    "#{@sayw1} #{@sayw2} #{@sayw3} #{@sayw4} #{@sayw5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation] 
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "subtract"
      @operation = @number1-@number2

    elsif @operation == "add"
      @operation = @number1+@number2
      
    elsif @operation == "multiply"
      @operation = @number1*@number2 
    
    else 
      @operation = @number1/@number2
    end 

      @operation.to_s
  end
end