require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.collect {|param, value| value}.join(" ").strip + "."
  end

  get '/:operation/:number1/:number2' do
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i

    case params[:operation]
    when "add"
      (n1 + n2).to_s
    when "divide"
      (n1 / n2).to_s
    when "multiply"
      (n1 * n2).to_s
    else
      (n1 - n2).to_s
    end
  end
end