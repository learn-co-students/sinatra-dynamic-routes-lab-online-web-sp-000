require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    user_name = params[:name].reverse
    user_name
  end

  get "/square/:number" do
    number = params[:number].to_i
    num_output = number * number
    num_output.to_s
  end

  get "/say/:number/:phrase" do
    number = params[:number].to_i
    phrase = params[:phrase]
    [phrase] * number
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @W1 = params[:word1]
    @W2 = params[:word2]
    @W3 = params[:word3]
    @W4 = params[:word4]
    @W5 = params[:word5]
    output = "#{@W1} #{@W2} #{@W3} #{@W4} #{@W5}."
    output
  end

  get "/:operation/:number1/:number2" do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    if operation == "add"
      output = number1 + number2
      return output.to_s
    elsif operation == "subtract"
      output = number1 - number2
      return output.to_s
    elsif operation == "multiply"
      output = number1 * number2
      return output.to_s
    else operation == "divide"
      output = number1 / number2
      return output.to_s
    end
  end

end
