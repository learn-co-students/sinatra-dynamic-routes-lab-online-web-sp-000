require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end
  
  
  get "/square/:number" do
    @product = params[:number].to_i * params[:number].to_i
    "#{@product}"
  end
  
 get '/say/:number/:phrase' do 
      @product = []
      params[:number].to_i.times do 
     @product << params[:phrase].to_s
   end
   "#{@product}"
  end 
  get '/say/:word1/:word2/:word3/:word4/:word5' do
  
   @product = params[:word1].to_s + ' ' +  params[:word2].to_s + ' ' + params[:word3].to_s + ' ' + params[:word4].to_s + ' ' + params[:word5].to_s + '.'
    "#{@product}"
  end

  get '/:operation/:number1/:number2' do 
    if params[:operation].to_s == 'multiply'
    @product = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation].to_s == 'divide'
    @product = params[:number1].to_i / params[:number2].to_i
    elsif params[:operation].to_s == 'add'
    @product = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation].to_s == 'subtract'
    @product = params[:number1].to_i - params[:number2].to_i
  end
   "#{@product}"
 end
end
