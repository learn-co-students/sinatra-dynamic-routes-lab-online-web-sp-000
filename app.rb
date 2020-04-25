require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @squared_number = params[:number].to_i ** 2
    "#{@squared_number}"
  end

  get '/say/:number/:phrase' do
    solution = ''
    params[:number].to_i.times do
      solution += params[:phrase]
    end
    solution
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = []
    params.each do |k,v|
      @words << v
    end
    "#{@words.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @add = params[:number1].to_i + params[:number2].to_i
    @subtract = params[:number1].to_i - params[:number2].to_i
    @multiply = params[:number1].to_i * params[:number2].to_i
    @divide = params[:number1].to_i / params[:number2].to_i
    if params[:operation].include?("add")
      "#{@add}"
    elsif params[:operation].include?("subtract")
      "#{@subtract}"
    elsif  params[:operation].include?("multiply")
      "#{@multiply}"
    else
      "#{@divide}"
    end
  end

end