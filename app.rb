require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reversed = params[:name].reverse

    "#{@reversed}"
  end

  get '/square/:number' do
    @number = params[:number].to_i

    @square = @number * @number
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    result = ""

    @number.times do
      result += "#{@phrase}\n"
    end

    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do

    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i

    case params[:operation]
    when "add"
      answer = @n1 + @n2
    when "subtract"
      answer = @n1 - @n2
    when "multiply"
      answer = @n1 * @n2
    when "divide"
      answer = @n1 / @n2
    end

    answer.to_s
  end

end