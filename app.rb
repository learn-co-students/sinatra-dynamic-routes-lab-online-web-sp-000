require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse

    "#{@reverse_name}"
  end

  get '/square/:number' do
    @number_square = params[:number].to_i * params[:number].to_i
    "#{@number_square}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @num_times = params[:number].to_i
    @repeated_phrase = []

    @num_times.times do 
      @repeated_phrase << @phrase
    end

    "#{@repeated_phrase.join(' ')}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @operation
    when "add"
      "#{@num1 + @num2}"
    when "subtract"
      "#{@num1 - @num2}"
    when "multiply" 
      "#{@num1 * @num2}"
    when "divide"
      "#{@num1 / @num2}"
    else
      "Something went wrong."
    end
  end
end