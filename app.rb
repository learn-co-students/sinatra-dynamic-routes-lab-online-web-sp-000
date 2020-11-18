require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @square = (params[:number].to_i ** 2).to_s
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @say = params[:phrase] * params[:number].to_i
    "#{@say}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @say = "#{params[:word1]} " + "#{params[:word2]} " + "#{params[:word3]} " + "#{params[:word4]} " + "#{params[:word5]}." 
    "#{@say}"
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @operation = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      @operation = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      @operation = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      @operation = params[:number1].to_i / params[:number2].to_i
    end
    "#{@operation}"
  end
end