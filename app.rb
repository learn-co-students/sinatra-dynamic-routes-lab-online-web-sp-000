require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do 
    params[:name].reverse
  end 

  get '/square/:number' do 
    @squared = params[:number].to_i  * params[:number].to_i
    @squared.to_s
  end 

  get '/say/:number/:phrase' do 
  params[:phrase] * params[:number].to_i
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
 get '/:operation/:number1/:number2' do
    case params[:operation]
    when 'add'
      added = params[:number1].to_f + params[:number2].to_f
      added.to_s
    when 'subtract'
      subbed = params[:number1].to_f - params[:number2].to_f
      subbed.to_s
    when 'multiply'
      multi = params[:number1].to_f * params[:number2].to_f
      multi.to_s
    else
      divide = params[:number1].to_f / params[:number2].to_f
      divide.to_s
    end
  end
end