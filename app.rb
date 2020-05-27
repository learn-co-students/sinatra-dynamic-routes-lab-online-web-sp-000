require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end 

  get '/square/:number' do 
    square = params[:number].to_i ** 2
    "#{square}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    string = ""

    number.times do 
      string += "#{params[:phrase]} \n"
    end 

    string 
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 

  get '/:operation/:number1/:number2' do 
    operator = params[:operation]

    case operator 
    when "add"
      sum = params[:number1].to_i + params[:number2].to_i
      "#{sum}"

    when "subtract"
      subtraction = params[:number1].to_i - params[:number2].to_i
      "#{subtraction}"

    when "multiply"
      multiplication = params[:number1].to_i * params[:number2].to_i
      "#{multiplication}"

    when "divide"
      division = params[:number1].to_i / params[:number2].to_i
      "#{division}"

    else 
      "That is not a valid operation!"
    end 

  end 

end