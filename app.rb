require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @new_name = params[:name].reverse
    "#{@new_name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num**2}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]

    @array = []
    @num.times do
      @array << @phrase
    end

    "#{@array.join(" ")}"
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
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @operation == "add"
      "#{@num1 + @num2}"
    elsif @operation == "subtract"
      "#{@num1 - @num2}"
    elsif @operation == "multiply"
      "#{@num1 * @num2}"
    elsif @operation = "divide"
      "#{@num1 / @num2}"
    end
  end

end
