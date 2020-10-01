require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name_reversed = params[:name].reverse
    "#{@name_reversed}"
  end

  get '/square/:number' do
    @square = params[:number].to_i*params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @string = ""
    (params[:number].to_i).times do 
      @string+="#{params[:phrase]}\n"
    end
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    case params[:operation]
    when 'add'
      result = (number1+number2).to_s
    when 'subtract'
      result = (number1-number2).to_s
    when 'divide'
      result = (number1/number2).to_s
    when 'multiply'
      result = (number1*number2).to_s
    end
  end





end