require_relative 'config/environment'
# require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i**2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    # @phrase = params[:phrase]
    # @number = params[:number].to_i
    @return_phrase = ""
    # while @number > 0 do
    #   @return_phrase = @return_phrase + " " + @phrase
    #   @number -= 1
    # end
    # alternative
    (params[:number].to_i).times do
      @return_phrase += "#{params[:phrase]}\n"
    end
    @return_phrase    
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    
    # binding.pry
    case params[:operation]
    when "add"
      @return = @number1 + @number2
    when "subtract"
      @return = @number1 - @number2
    when "multiply"
      @return = @number1 * @number2
    when "divide"
      @return = @number1 / @number2
    end
    "#{@return}"
  end
end