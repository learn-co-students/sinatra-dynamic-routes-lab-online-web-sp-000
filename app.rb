require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversed_name = params[:name].reverse!
    "#{@reversed_name}"
  end
  
  get "/square/:number" do
    @squared_number = params[:number].to_i**2
    "#{@squared_number}"
  end
  
  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @wordsArray = []
    @number.times do
      @wordsArray << params[:phrase]
    end
    "#{@wordsArray.join(" ")}"
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @wordsArray = []
    params.each do |k, v|
      @wordsArray << v
    end
    "#{@wordsArray.join(" ") + "."}"
  end
  
  get "/:operation/:number1/:number2" do
    if params[:operation] == "add"
      "#{params[:number1].to_i + params[:number2].to_i}"
    elsif params[:operation] == "subtract"
      "#{params[:number1].to_i - params[:number2].to_i}"
    elsif params[:operation] == "divide"
      "#{params[:number1].to_i / params[:number2].to_i}"
    else
      "#{params[:number1].to_i * params[:number2].to_i}"  
    end
  end

end