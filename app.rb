require_relative 'config/environment'

class App < Sinatra::Base




  get "/reversename/:name" do
    @user_name = params[:name]
    @user_name.reverse 
  end
  
  
  get "/square/:number" do 
    @num = params[:number].to_i
    result = @num * @num 
    result.to_s 
  end 
  
  get '/say/:number/:phrase' do 
    @num = params[:number].to_i 
    @phrase = params[:phrase]
    "#{@phrase} " * @num  
    
  end 
  
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
  
    a= params[:word1]
    b=params[:word2]
    c=params[:word3]
    d=params[:word4]
    e=params[:word5]
  "#{a} #{b} #{c} #{d} #{e}."
  
  
  end 
  
  
  get '/:operation/:number1/:number2' do 
    num1 = params[:number1].to_i 
    num2 = params[:number2].to_i
    op = params[:operation] 
    
    if op == 'add'
      total = num1 + num2 
      p total.to_s
    elsif op == 'subtract'
      total = num1 - num2 
      p total.to_s 
    elsif op == 'multiply'
      total = num1 * num2 
      p total.to_s 
    elsif op == 'divide'
      total = num1 / num2 
      p total.to_s 
    
    end 
    
  end 
  
  








end