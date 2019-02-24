require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @str = params[:name].reverse
    "#{@str}"
  end

  get '/square/:number' do
    @square = params[:number].to_i*params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @x = params[:number].to_i
    @str = ""
    for i in 1..@x do
      @str+=params[:phrase]
    end
    "#{@str}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @str=""
    params.each do |key,value|
      value+=" "
      @str+=value
    end
    "#{@str.strip!}."
  end

  get '/:operation/:number1/:number2' do
    @str = case params[:operation]
    when "add"
      params[:number1].to_i + params[:number2].to_i
    when "subtract"
      params[:number1].to_i - params[:number2].to_i
    when "multiply"
      params[:number1].to_i*params[:number2].to_i
    when "divide"
      params[:number1].to_i/params[:number2].to_i
    else
      "Invalid operation"
    end
    "#{@str}"
  end


  
end