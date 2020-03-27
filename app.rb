require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    @reversename= params[:name].to_s.reverse
    "#{@reversename}"
  end

  get "/square/:number" do
    @square= params[:number].to_i ** 2
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    sayphrase= ''
    params[:number].to_i.times do
      sayphrase += params[:phrase]
    end
    sayphrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1= params[:word1]
    @word2= params[:word2]
    @word3= params[:word3]
    @word4= params[:word4]
    @word5= params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    number1= params[:number1].to_i
    number2= params[:number2].to_i
    answer= ''
    if params[:operation] == 'add'
      answer= (number1 + number2).to_s
    elsif params[:operation] == 'subtract'
      answer= (number1 - number2).to_s
    elsif params[:operation] == 'multiply'
      answer= (number1 * number2).to_s
    elsif params[:operation] == 'divide'
      answer= (number1 / number2).to_s
    end
  end
end