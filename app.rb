require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @user_name = params[:name]
    @user_name.reverse
  end

  get '/square/:number' do 
    @num = params[:number].to_i * params[:number].to_i
    "#{@num}"
  end

  get '/say/:number/:phrase' do 
    @saying = params[:phrase]
    @number = params[:number].to_i
    "#{@saying}" *@number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @words = params[:word1] + " " +  params[:word2]+ " " + params[:word3] + " " + params[:word4] + " " + params[:word5]
    "#{@words}."
  end

  get '/:operation/:number1/:number2' do 
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i 
    if @op == "add"
      "#{@num1 +@num2}"
    elsif @op == "subtract"
      "#{@num1 -@num2}"
    elsif @op == "multiply"
      "#{@num1 *@num2}"
    elsif @op == "divide"
      "#{@num1 / @num2}"
    end 
  end
end