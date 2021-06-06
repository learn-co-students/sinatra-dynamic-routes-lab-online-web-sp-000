require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get "/square/:number" do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/say/:number/:phrase" do
    @repeat = params[:number].to_i
    @phrase = []
    @repeat.times { @phrase << params[:phrase] }
    # @repeat.times do 
    # "#{params[:phrase]}"
    # end
    "#{@phrase.join(", ")}"
  end

  get "/:operation/:number1/:number2" do
    case params[:operation]
    when "add"
      @result = params[:number1].to_i + params[:number2].to_i
    when "subtract"
      @result = params[:number1].to_i - params[:number2].to_i
    when "multiply"
      @result = params[:number1].to_i * params[:number2].to_i
    when "divide"
      @result = params[:number1].to_i / params[:number2].to_i
    end

    "#{@result.to_s}"
  end
end