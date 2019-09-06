require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @reveresed_name = @name.reverse
    "#{@reveresed_name}"
  end

  get "/square/:number" do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @counter = 0
    phrases = []
    while @counter < @number do
      phrases << @phrase
      @counter += 1
    end
    "#{phrases}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    case @operation
    when "add"
        @sum = @number1 + @number2
        "#{@sum}"
      when "subtract"
        @difference = @number1 - @number2
        "#{@difference}"
      when "multiply"
        @product = @number1 * @number2
        "#{@product}"
      when "divide"
        @qotient = @number1 / @number2
        "#{@qotient}"
      else
    end
  end
end
