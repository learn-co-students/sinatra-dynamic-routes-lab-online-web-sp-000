require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse!}"
  end

  get '/square/:number' do
    square = params[:number].to_i
    square = square ** 2
    "#{square.to_s}"
  end

  get '/say/:number/:phrase' do
    repeat = params[:number].to_i
    phrase = params[:phrase]
    output = ""
    i = 0
    while i < repeat
      i += 1
      output += phrase + "\n"
    end
    "#{output}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    output = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    "#{output}"
  end

  get '/:operation/:number1/:number2' do
    num_1 = params[:number1].to_i
    num_2 = params[:number2].to_i
    total = 0

    case params[:operation]
    when 'add'
      total = num_1 + num_2
    when 'subtract'
      total = num_1 - num_2
    when 'multiply'
      total = num_1 * num_2
    when 'divide'
      total = num_1 / num_2
    end
    "#{total}"
  end

end