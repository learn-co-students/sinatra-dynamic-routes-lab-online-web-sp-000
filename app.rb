require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    n = params[:name]
    n.reverse
  end

  get '/square/:number' do
    num = params[:number].to_i
    sq = num ** 2
    sq.to_s
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
    phrase * num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num_1 = params[:number1].to_i
    num_2 = params[:number2].to_i
    op = params[:operation]
    case op
    when "add"
      @result = num_1 + num_2
    when "subtract"
      @result = num_1 - num_2
    when "multiply"
      @result = num_1 * num_2
    when "divide"
      @result = num_1 / num_2
    end
    @result.to_s
  end

end
