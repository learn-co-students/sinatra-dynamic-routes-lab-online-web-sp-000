require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @reversename = @name.reverse!
    "#{@reversename}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @number_squared = @number ** 2
    @number_squared_s = @number_squared.to_s
    "#{@number_squared_s}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase_array = []
    @number.times do
      @phrase_array << @phrase
    end
    @phrase_repeat = @phrase_array.join(" ")
    "#{@phrase_repeat}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    if @operation == "add"
      @operation = "+"
    elsif @operation == "subtract"
      @operation = "-"
    elsif @operation == "multiply"
      @operation = "*"
    elsif @operation == "divide"
      @operation = "/"
    end

    @number1 = params[:number1]
    @number2 = params[:number2]

    @eval = eval "#{@number1} #{@operation} #{@number2}"
    "#{@eval}"
  end

end
