require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    reverse_name = params[:name].reverse
  end

  get "/square/:number" do
    number = params[:number].to_i
    square = (number ** 2).to_s
  end

  get "/say/:number/:phrase" do
    params[:phrase] * params[:number].to_i
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]
    "#{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}."
  end

  get "/:operation/:number1/:number2" do
    
    number_1 = params[:number1].to_i
    number_2 = params[:number2].to_i

    if params[:operation] == "add"
      (number_1 + number_2).to_s
    elsif params[:operation] == "subtract"
      (number_1 - number_2).to_s
    elsif params[:operation] == "multiply"
      (number_1 * number_2).to_s
    elsif params[:operation] == "divide"
      (number_1 / number_2).to_s
    end
  end
end