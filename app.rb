require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do 
    @name = params[:name].reverse

    "#{@name}"
  end
  
  get '/square/:number' do 
    @sq_num = params[:number].to_i ** 2

    "#{@sq_num.to_s}"
  end 

  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase_x = @phrase * @number

    "#{@phrase_x}"
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} " "#{@word2} " "#{@word3} " "#{@word4} " "#{@word5}."  
  end 

  get '/:operation/:number1/:number2' do 
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    # @solution = @num1.send(@op, @num2)
    @add = if @op == "+"
      @num1 + @num2 
    end 
    @sub = if @op == "-"
      @num2 - @num1 
    end 
    @x = if @op == "*"
      @num1 * @num2 
    end 
    @div = if @op == "U+00F7"
      @num1 / @num2 
    end 

    if @op == "+" 
      "#{@add.to_s}"
    elsif @op == "-"
      "#{@sub.to_s}"
    elsif @op == "*"
      "#{@x.to_s}"
    elsif @op == "U+00F7"
      "#{@div.to_s}"
    end
  end 

end