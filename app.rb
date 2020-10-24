require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end
  
  get '/square/:number' do
    @num1 = params[:number].to_i
    "#{@num1 * @num1}"
  end
  
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @empty = ""
    
    @num.times do
      @empty << @phrase
      @empty << "\n"
    end
    "#{@empty}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do
    @oper = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    
    if @oper == "add"
      @finalnum = @num1 + @num2
      "#{@finalnum}"
    elsif @oper == "subtract"
      @finalnum = @num1 - @num2
      "#{@finalnum}"
    elsif @oper == "multiply"
      @finalnum = @num1 * @num2
      "#{@finalnum}"
    elsif @oper == "divide"
      @finalnum = @num1 / @num2
      "#{@finalnum}"
    end
  end 

end