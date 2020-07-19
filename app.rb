require_relative 'config/environment'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    phrase = []

    params[:number].to_i.times do
      phrase << params[:phrase]
    end  
    
    "#{phrase.join(" ")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params.values().join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    # if params[:operation] == 'add'
    #   "#{params[:number1] + params[:number2]}"
    # else
    #   puts params.values()
    # end
    op = params[:operation]
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i

    case op
    when "add"
      "#{n1 + n2}"
    when "subtract"
      "#{n1 - n2}"
    when "multiply"
      "#{n1 * n2}"
    when "divide"
      "#{n1.to_f / n2.to_f}" 
    else
      "Bad operation"     
    end
  end

end