require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @num = params[:number].to_i
    @squared = @num * @num
    "#{@squared}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase="#{params[:phrase]}"
    "#{@phrase * @num}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @word_string = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      @solution = params[:number1].to_i + params[:number2].to_i
    when "subtract"
      @solution = params[:number1].to_i - params[:number2].to_i
    when "multiply"
      @solution = params[:number1].to_i * params[:number2].to_i
    when "divide"
      @solution = params[:number1].to_i / params[:number2].to_i
    end
    "#{@solution}"
  end


end
