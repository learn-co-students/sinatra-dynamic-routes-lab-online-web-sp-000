require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}" * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = params.values.to_a
    "#{words.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @num_1 = params[:number1].to_i
    @num_2 = params[:number2].to_i
    @operation = params[:operation]

    if @operation == "add"
      result = @num_1 + @num_2
      "#{result}"
    elsif @operation == "subtract"
      result = @num_1 - @num_2
      "#{result}"
    elsif @operation == "multiply"
      result = @num_1 * @num_2
      "#{result}"
    else @operation == "divide"
      result = @num_1/@num_2
      "#{result}"
    end
  end

end
