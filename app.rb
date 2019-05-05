require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].to_s
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_s.to_i
    @square = @number*@number
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_s.to_i
    @phrase = params[:phrase]
    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{@params[:word1]} #{@params[:word2]} #{@params[:word3]} #{@params[:word4]} #{@params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    case @operation
      when "add"
        @operator = "+"
      when "subtract"
        @operator = "-"
      when "multiply"
        @operator = "*"
      when "divide"
        @operator = "/"
    end
    "#{@params[:number1].to_s.to_i.method(@operator).(@params[:number2].to_s.to_i)}"
  end
end