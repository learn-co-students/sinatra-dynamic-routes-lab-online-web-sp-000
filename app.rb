require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
  
  get '/:operation/:number1/:number2' do
    # raise params.inspect
    @add = params[:operation]
    @subtract = params[:operation]
    @multiply = params[:operation]
    @divide = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    
    if @add == "add"
      "#{@n1 + @n2}"
    elsif @subtract == "subtract"
      "#{@n1 - @n2}"
    elsif @multiply == "multiply"
      "#{@n1 * @n2}"
    else
      "#{@n1 / @n2}"
    end
  end
end