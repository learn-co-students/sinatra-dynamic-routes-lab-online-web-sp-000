require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    return "#{@user_name.reverse}."
  end
  get "/:square/:number" do
      @square = params[:number].to_i*params[:number].to_i
      "#{@square}"
  end
  get "/say/:number/:phrase" do
    string = ""
    params[:number].to_i.times do
      string<<params[:phrase]
    end
    return string
  end
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    
    @sting = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}"
    
    "#{@sting}."
  end
  get "/:operation/:number1/:number2" do
    case params[:operation]
    when "add"
      @add = params[:number1].to_i+params[:number2].to_i
      "#{@add}"
    when "subtract"
      @subtract = params[:number1].to_i-params[:number2].to_i
      "#{@subtract}"
    when "divide"
      @divide = params[:number1].to_i/params[:number2].to_i
      "#{@divide}"
    when "multiply"
      @multiply = params[:number1].to_i*params[:number2].to_i
      "#{@multiply}"
    when "modulo"
      @modulo = params[:number1].to_i%params[:number2].to_i
      "#{@modulo}"
    else
      "unknown operator"
    end
  end


end