require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    "#{number} squared = #{number.**2}."
  end

  get '/say/:number/:phrase' do
    return_string = ""
    params[:number].to_i.times do |i|
      return_string += params[:phrase] + " "
    end
    return_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    output_string = ""
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    if operation == "add"
      output_string = "#{number1} + #{number2} = #{number1 + number2}"
    elsif operation == "subtract"
      output_string = "#{number1} - #{number2} = #{number1 - number2}"
    elsif operation == "multiply"
      output_string = "#{number1} x #{number2} = #{number1 * number2}"
    elsif operation == "divide"
      output_string = "#{number1} / #{number2} = #{number1 / number2}"
    else
      output_string = "I don't know how to #{operation}."
    end
  end
end
