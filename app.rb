require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @reversedname = params[:name].to_s.reverse
    "#{@reversedname}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @total = @num ** 2
    "#{@total}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase].to_s
    "#{@phrase}" * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1].to_s
    @word2 = params[:word2].to_s
    @word3 = params[:word3].to_s
    @word4 = params[:word4].to_s
    @word5 = params[:word5].to_s
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    
    case @operation
    when "add"
      @total = @num1 + @num2
    when "subtract"
      @total = @num1 - @num2
    when "multiply"
      @total = @num1 * @num2
    when "divide"
      @total = @num1 / @num2
    end
    "#{@total}"
  end

end