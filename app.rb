require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end 

  get '/square/:number' do 
    (params[:number].to_i ** 2).to_s
  end 

  get '/say/:number/:phrase' do 
    result_str = ''
    n = params[:number].to_i
    p = params[:phrase]
    n.times do 
      result_str << p 
    end 
    result_str
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."   
  end 

  get '/:operation/:number1/:number2' do 
    operation = params[:operation]
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i    

    if operation == "add"
      answer = n1 + n2
    elsif operation == "subtract"
      answer = n1 - n2
    elsif operation == "multiply"
      answer = n1 * n2
    elsif operation == "divide"
      answer = n1 / n2
    end
    answer.to_s
  end 


end