require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i**2
    "#{@number}"
  end

  get "/say/:number/:phrase" do
    @number= params[:number].to_i
    @phrase = params[:phrase]
    string = ""
    @number.times{string+="#{@phrase}\n"}
    "#{string}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @num = nil

    if @operation == "add"
      @num = @num1 + @num2
    elsif @operation == "subtract"
      @num = @num1 - @num2
    elsif @operation == "multiply"
      @num = @num1 * @num2
    elsif @operation == "divide"
      @num = @num1 / @num2
    end

    "#{@num}"
  end

end
