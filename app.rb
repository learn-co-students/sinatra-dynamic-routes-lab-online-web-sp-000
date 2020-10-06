require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @reverse = params[:name].reverse
    @reverse 
  end 

  get '/square/:number' do 
    @squared = params[:number].to_i
    @squared_variable = @squared * @squared
    @squared_variable.to_s
  end 

  get '/say/:number/:phrase' do
    result = ''
    params[:number].to_i.times do
      result += params[:phrase]
    end 
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
  @addition = params[:number1].to_i + params[:number2].to_i 
  @subtraction = params[:number2].to_i - params[:number1].to_i
  @multiplication = params[:number1].to_i * params[:number2].to_i
  @division = params[:number1].to_i / params[:number2].to_i 
  return @addition.to_s, @subtraction.to_s, @multiplication.to_s, @division.to_s
  end 
end 


# get '/medicines/:id' do
#   @medicine = all_the_medicines.select do |medicine|
#     medicine.id == params[:id]
#   end.first
#   erb :'/medicines/show.html'
# end