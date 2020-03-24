require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    ((params[:number].to_i)**2).to_s
  end

  get '/say/:number/:phrase' do
    @repeat = params[:number].to_i
    @string = ""
    @repeat.times do
      @string += params[:phrase]
    end
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do
    @oper = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @tot = 0

    if @oper == "add"
      @tot = @num1 + @num2
    elsif @oper == "subtract"
      @tot = @num1 - @num2
    elsif @oper == "divide"
      @tot = @num1 / @num2
    elsif @oper == "multiply"
      @tot = @num1 * @num2
    end

    @tot.to_s
  end
end
