require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get "/reversename/:name" do 
    @user_name = params[:name].reverse
    "#{@user_name}"
  end 

  get "/square/:number" do 
    @num = params[:number].to_i**2
    "#{@num}"
  end 

  get "/say/:number/:phrase" do 
    array = []
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times{ array << @phrase}
    array.join(" ")
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
    @op = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    case @op
    when "add"
      "#{@n1+@n2}"
    when "subtract"
      "#{@n1-@n2}"
    when "multiply"
      "#{@n1*@n2}"
    when "divide"
      "#{@n1/@n2}"
    end 
  end


end