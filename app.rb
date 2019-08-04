require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end

  get '/square/:number' do
    @squared_num = params[:number].to_i ** 2
    @squared_num.to_s
  end

  get '/say/:number/:phrase' do
    @repeated_phrase = params[:phrase] * params[:number].to_i
    "#{@repeated_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    phrases = [params[:word1], params[:word2], params[:word3], params[:word4],
                params[:word5]]

    @full_phrase = phrases.join(" ")
    "#{@full_phrase}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num_1 = params[:number1].to_i
    num_2 = params[:number2].to_i

    if operation == "add"
      total = num_1 + num_2
    elsif operation == "subtract"
      total = num_1 - num_2
    elsif operation == "multiply"
      total = num_1 * num_2
    elsif operation == "divide"
      total = num_1 / num_2
    end

    total.to_s
  end
end
