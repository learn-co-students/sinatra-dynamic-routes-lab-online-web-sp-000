require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
    #renders the name backwards
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
    #renders the square of the number
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end
    #repeats the phrase n times

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    #concatenates the words and adds a period
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5 + "."

    # string.join(" ")keeps giving error - revisit
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case @operation
    when "add"  #adds two numbers together
      (@number1 + @number2).to_s
    when "subtract"   #subtracts the second number from the first
      (@number1 - @number2).to_s
    when "multiply"   #multiplies two numbers together
      (@number1 * @number2).to_s
    when "divide"   #divides the first number by the second number
      (@number1 / @number2).to_s
    end
  end

end
