require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    square_number = @number.to_i * @number.to_i
    "#{square_number}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase] * params[:number].to_i
    "#{@phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @say = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @add = params[:number1].to_i + params[:number2].to_i
      "#{@add}"
    elsif params[:operation] == "subtract"
      @subtract = params[:number1].to_i - params[:number2].to_i
      "#{@subtract}"
    elsif params[:operation] == "multiply"
      @multiply = params[:number1].to_i * params[:number2].to_i
      "#{@multiply}"
    else
      @divide = params[:number1].to_i / params[:number2].to_i
      "#{@divide}"
    end
  end
end
