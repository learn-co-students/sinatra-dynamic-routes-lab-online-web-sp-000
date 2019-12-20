require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    @answer = params[:number].to_i * params[:number].to_i
    "#{@answer}"
  end

  get "/say/:number/:phrase" do
    @phrase = params[:phrase] * params[:number].to_i
    "#{@phrase}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @string = params[:word1] + " " +  params[:word2] + " " +  params[:word3] + " " +  params[:word4] + " " +  params[:word5] + "."
    "#{@string}"
  end

  get "/:operation/:number1/:number2" do
    if params[:operation] == "add"
      @solution = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      @solution = params[:number2].to_i - params[:number1].to_i
    elsif params[:operation] == "multiply"
      @solution = params[:number1].to_i * params[:number2].to_i
    else params[:operation] == "divide"
      @solution = params[:number1].to_i / params[:number2].to_i
    end
    "#{@solution}"
  end

end
