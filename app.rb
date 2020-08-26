require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get "/square/:number" do
    @number_square = params[:number].to_i * params[:number].to_i
    "#{@number_square.to_s}"
  end

  get "/say/:number/:phrase" do
    @string_to_say = params[:phrase] * params[:number].to_i
    "#{@string_to_say}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @string_to_say = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " +params[:word5] + "."
    "#{@string_to_say}"
  end

  get "/:operation/:number1/:number2" do
    case params[:operation]
    when "add"
      @add_result = params[:number1].to_i + params[:number2].to_i
      "#{@add_result.to_s}"
    when "subtract"
      @subtract_result = params[:number1].to_i - params[:number2].to_i
      "#{@subtract_result.to_s}"
    when "divide"
      @divide_result = params[:number1].to_i / params[:number2].to_i
      "#{@divide_result.to_s}"
    when "multiply"
      @multiply_result = params[:number1].to_i * params[:number2].to_i
      "#{@multiply_result.to_s}"
    end
  end

end
