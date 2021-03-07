require_relative 'config/environment'
 
class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do 
    params[:name].reverse
  end

  get "/square/:number" do
    @num=params[:number].to_i**2
    @num.to_s
  end

  get "/say/:number/:phrase" do
    @num=params[:number].to_i
    @phrase=params[:phrase]

    a=""
    @num.times do 
      a << @phrase
    end
    a
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
   a = "#{params[:word1]}" + " " + "#{params[:word2]}" + " " + "#{params[:word3]}" + " " + "#{params[:word4]}" " " + "#{params[:word5]}" + "."
  end

  get '/:operation/:number1/:number2' do 
    case params[:operation]
    when "add"
      a="+"
    when "subtract"
      a="-"
    when "multiply"
      a="*"
    when "divide"
      a="/"
    end
    
    @result=params[:number1].to_i.send a, params[:number2].to_i
    @result.to_s
  end
    
end