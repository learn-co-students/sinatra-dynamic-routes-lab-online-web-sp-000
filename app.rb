require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{(params[:number].to_i**2).to_s}"
  end

  get '/say/:number/:phrase' do
    phrase = params[:phrase]
    number = params[:number].to_i
    return_string = ""
    number.times do
      return_string.insert(-1, phrase + " ")
    end
    return_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    a = params[:number1].to_i
    b = params[:number2].to_i
    case operation
    when "add"
      (a + b).to_s
    when "subtract"
      (a - b).to_s
    when "multiply"
      (a * b).to_s
    when "divide"
      (a / b).to_s
    else
      "We don't support that operation"
    end
  end

end
