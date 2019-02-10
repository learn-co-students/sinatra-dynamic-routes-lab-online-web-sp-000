require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @num_square = params[:number].to_i ** 2
    "#{@num_square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}\n" * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    num_1 = params[:number1].to_i
    num_2 = params[:number2].to_i
    if params[:operation] == "add"
      @total = num_1 + num_2
    elsif params[:operation] == "subtract"
      @total = num_2 - num_1
    elsif params[:operation] == "multiply"
      @total = num_1 * num_2
    elsif params[:operation] == "divide"
      @total = num_1 / num_2
    end
    "#{@total}"
  end
end