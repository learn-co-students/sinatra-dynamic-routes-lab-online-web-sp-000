require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.to_s.reverse}"
  end

  get "/square/:number" do
    @num = params[:number]
    @num = @num.to_i
    @result = @num * @num
    "#{@result.to_s}"
  end

  get '/say/:number/:phrase' do
    @num_string = params[:number]
    @num = @num_string.to_i
    @phrase = params[:phrase]
    @phrase = @phrase.to_s
    @result = ""
    @num.times { 
      @result = @result + " " + @phrase }
      "#{@result}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1 + ' ' + @word2 + ' ' + @word3 + ' ' + @word4 + ' ' + @word5}." 
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1]
    @num1 = @num1.to_i
    @num2 = params[:number2]
    @num2 = @num2.to_i
    case params[:operation]
      when "add"
        "#{ (@num1 + @num2).to_s }"
      when "subtract"
        "#{ (@num1 - @num2).to_s }"
      when "multiply"
        "#{ (@num1 * @num2).to_s }"
      when "divide"
        "#{ (@num1 / @num2).to_s }"
      else
        "Unknown operation (#{:operation})"  
      end
    end      

      
  
end