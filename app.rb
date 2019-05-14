require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
# binding.pry
    (@num**2).to_s
  end

  get '/say/:number/:phrase' do
    @phrase = String.new

    params[:number].to_i.times do
      @phrase = "#{@phrase} " + params[:phrase]
    end

    @phrase
  end
  # binding.pry
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = "#{params[:word1]} " + "#{params[:word2]} " + "#{params[:word3]} " + "#{params[:word4]} " + "#{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @operation == "add"
      (@num1 + @num2).to_s
    elsif @operation == "subtract"
      (@num1 - @num2).to_s
    elsif @operation == "multiply"
      (@num1 * @num2).to_s
    elsif @operation == "divide"
      # binding.pry
      (@num1 / @num2).to_s
    end
  end

end
