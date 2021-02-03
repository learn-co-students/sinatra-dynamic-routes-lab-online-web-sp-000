require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name].reverse
    "#{@name}"
  end 

  get '/square/:number' do 
   (params[:number].to_i ** 2).to_s
  end 

  get '/say/:number/:phrase' do 
    print = ''
    params[:number].to_i.times do 
      print += params[:phrase]
    end
    print
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    print = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    print
  end 

  get '/:operation/:number1/:number2' do 
    if params[:operation] == "add" 
      (params[:number1].to_i + params[:number2].to_i).to_s 
    elsif params[:operation] == "subtract"
      (params[:number1].to_i - params[:number2].to_i).to_s
    elsif params[:operation] == "multiply"
      (params[:number1].to_i * params[:number2].to_i).to_s
    else 
      (params[:number1].to_i / params[:number2].to_i).to_s
    end 
  end 

end