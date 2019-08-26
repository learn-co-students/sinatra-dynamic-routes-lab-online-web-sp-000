require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/' do
    "homepage for the lab"
  end

  get '/reversename/:name' do
    reversed_name = params[:name].reverse!
  end

  get '/square/:number' do
    num = params[:number].to_i
    "#{num * num}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5'do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operator = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case operator
    when "multiply"
      "#{@number1*@number2}"
    when "add"
      "#{@number1+@number2}"
    when "subtract"
      "#{@number1-@number2}"
    when "divide"
      "#{@number1/@number2}"
    else
      "You entered an error!"
    end
  end

end
