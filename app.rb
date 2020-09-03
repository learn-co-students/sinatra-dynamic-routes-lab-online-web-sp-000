require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name].reverse
    "Hello #{@user_name}!"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    @square = @num * @num
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @num
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get "/:operation/:number1/:number2" do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @op = params[:operation]
    num3 = 0
    if @op == "add"
      num3 = @num1 + @num2
    elsif @op == "subtract"
      num3 = @num1 - @num2
    elsif @op == "divide"
      num3 = @num1/@num2
    elsif @op == "multiply"
      num3 = @num1 * @num2
    end
    "#{num3}"
  end
end