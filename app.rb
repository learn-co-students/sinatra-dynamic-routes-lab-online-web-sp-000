require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    "#{params[:name]}".reverse
  end

  get '/square/:number' do
    square = params[:number].to_i
    square *= square
    square.to_s
  end

  get '/say/:number/:phrase' do
    (params[:number].to_i).times.collect { "#{params[:phrase]}"}
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    arithmetic = nil
    case params[:operation]
      when "add"
        arithmetic = params[:number1].to_i + params[:number2].to_i
        arithmetic.to_s
      when "subtract"
        arithmetic = params[:number2].to_i - params[:number1].to_i
        arithmetic.to_s
      when "multiply"
        arithmetic = params[:number1].to_i * params[:number2].to_i
        arithmetic.to_s
      when "divide"
        arithmetic = params[:number1].to_i / params[:number2].to_i
        arithmetic.to_s
    end
  end

end