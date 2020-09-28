require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @username = params[:name]
    "#{@username.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{(@number*@number).to_s}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{ [@phrase].cycle(@number).to_a.join(' ')}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
      if @operation == "add"
        @sign="+"
      elsif @operation == "subtract"
        @sign="-"
      elsif @operation == "multiply"
        @sign="*"
      elsif @operation == "divide"
        @sign="/"
      end
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @answer=@number1.send(@sign, @number2)
    "#{@answer}"
  end

end