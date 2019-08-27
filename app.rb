require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @string = params[:phrase] + " "
    "#{@string * @number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    "#{@string}"
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    if op == "add"
      @result = params[:number1].to_i + params[:number2].to_i
    elsif op == "subtract"
      @result = params[:number2].to_i - params[:number1].to_i
    elsif op == "multiply"
      @result = params[:number2].to_i * params[:number1].to_i
    else
      @result = params[:number1].to_i / params[:number2].to_i
    end
    "#{@result}"
  end

end