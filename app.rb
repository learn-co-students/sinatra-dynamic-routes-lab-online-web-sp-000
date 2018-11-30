require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do
    number = params[:number].to_i
    square = number * number
    square.to_s  
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    "#{params[:phrase]}\n" * number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    num_1 = params[:number1].to_i
    num_2 = params[:number2].to_i
    case op
    when "add"
      (num_1 + num_2).to_s
    when "subtract"
      (num_1 - num_2).to_s
    when "multiply"
      (num_1 * num_2).to_s
    when "divide"
      (num_1 / num_2).to_s
    else
      "I can't do that"
    end
  end
end