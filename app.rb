require_relative "config/environment"

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @n = params[:name]
    @n.reverse
  end
  get "/square/:number" do
    @n = params[:number]
    (@n.to_i**2).to_s
  end
  get "/say/:number/:phrase" do
    @n = params[:number].to_i
    @p = params[:phrase]
    arr = []
    @n.times do
      arr << @p
    end
    arr.join(" ")
  end
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  get "/:operation/:number1/:number2" do
    @op = params[:operation]
    @_1 = params[:number1].to_i
    @_2 = params[:number2].to_i

    case @op
    when "add"
      (@_1 + @_2).to_s
    when "subtract"
      (@_1 - @_2).to_s
    when "multiply"
      (@_1 * @_2).to_s
    when "divide"
      (@_1 / @_2).to_s
    end
  end
end
