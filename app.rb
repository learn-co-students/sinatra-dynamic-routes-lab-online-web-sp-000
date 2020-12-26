require_relative 'config/environment'
require "pry"

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    string = ""
    @number.to_i.times do
      string += "#{params[:phrase]}"
    end
    string
  end
  
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do
    # binding.pry
    string = ""
    if params[:operation] == "subtract"
      string = "#{params[:number1].to_i - params[:number2].to_i}"
    elsif params[:operation] == "add"
      string = "#{params[:number1].to_i + params[:number2].to_i}"
     elsif params[:operation] == "multiply"
      string = "#{params[:number1].to_i * params[:number2].to_i}"
     elsif params[:operation] == "divide"
      string = "#{params[:number1].to_i / params[:number2].to_i}"
    end
    string
  end
  
end