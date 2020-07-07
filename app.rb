require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversename = params[:name].to_s.reverse

    "#{@reversename}"
  end

  get '/square/:number' do
    @num = params[:number].to_i

    "#{@num * @num}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @output = ""
    @num.times do
      @output << @phrase + "\n"
    end

    @output
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = [] 
    @words << params[:word1] + " "
    @words << params[:word2] + " "
    @words << params[:word3] + " "
    @words << params[:word4] + " "
    @words << params[:word5] + "."

    "#{@words.join("")}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @operation
    
    when 'add'
      "#{@num1 + @num2}"

    when 'subtract'
      "#{@num1 - @num2}"
    
    when 'multiply'
      "#{@num1 * @num2}"

    when 'divide'
      "#{@num1 / @num2}"
    end
  end
end