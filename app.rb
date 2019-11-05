require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    # renders name backwards
    @username = params[:name]
    "#{@username.reverse}"
  end

  get '/square/:number' do
    # renders square of a number
    @num1 = params[:number].to_i
    "#{@num1 * @num1}"
  end

  get '/say/:number/:phrase' do
    # repeat phrase n times
    @phrase1 = params[:phrase]
    @num1 = params[:number].to_i
    @phrase1 * @num1
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # concatenates the words and adds a period
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    # adds two numbers together
    # subtracts the second number from the first
    # multiples two numbers together
    # divides the first number by the second number
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    if @operation == "add"
      (@number1 + @number2).to_s
    elsif @operation == "subtract"
      (@number1 - @number2).to_s
    elsif @operation == "divide"
      (@number1 / @number2).to_s
    else @operation == "multiply"
      (@number1 * @number2).to_s
    end
    #@number1.send(@operation, @number2)
  end

end
