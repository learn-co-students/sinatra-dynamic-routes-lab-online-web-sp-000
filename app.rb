require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num ** 2}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @output_phrase = []
    @num.times do
      @output_phrase << @phrase
    end
    @output_phrase.join(", ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @phrase = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operations = {
      'add' => '+', 
      'subtract' => '-', 
      'multiply' => '*', 
      'divide' => '/'
    }
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    "#{@num1.send(@operations[params[:operation]], @num2)}"
  end

end