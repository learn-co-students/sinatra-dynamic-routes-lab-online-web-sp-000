require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/' do
    "Hello World"
  end 

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2 }"
  end

  get '/say/:number/:phrase' do
   array = Array.new(params[:number].to_i, params[:phrase])
    #it looks like u can only have one " " in a route. weird!
    #if u want several liens u should do a separat erb file i guess
   "#{array.join(" ")}"
     end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
    array = [params[:word1], params[:word2], params[:word3], params[:word4], "#{params[:word5]}."]
    string = array.join(" ")

    "#{string}"
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      "#{params[:number1].to_i + params[:number2].to_i}"
    elsif params[:operation] == "subtract"
      "#{params[:number1].to_i - params[:number2].to_i}"

    elsif params[:operation] == "multiply"
      "#{params[:number1].to_i * params[:number2].to_i}"
    else 
      "#{params[:number1].to_i / params[:number2].to_i}"
    end

  end
  
end