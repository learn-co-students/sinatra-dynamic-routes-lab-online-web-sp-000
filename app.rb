require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i ** 2}"
  end
  
  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    "#{@phrase * @number.to_i}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @one = @params[:word1]
    @two = @params[:word2]
    @three = @params[:word3]
    @four = @params[:word4]
    @five = @params[:word5]
    "#{@one} #{@two} #{@three} #{@four} #{@five}."
  end
  
  get '/:operation/:number1/:number2' do
    @one = params[:number1]
    @two = params[:number2]
    @operation = params[:operation]
    
    if @operation == "add"
      "#{@one.to_i + @two.to_i}"
    elsif @operation == "subtract"
      "#{@one.to_i - @two.to_i}"
    elsif @operation == "multiply"
      "#{@one.to_i * @two.to_i}"
    elsif @operation == "divide"
      "#{@one.to_i / @two.to_i}"
    end
  end
  
end