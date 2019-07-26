require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse!
  end
  get '/square/:number' do
    @number = params[:number].to_i
    @number = @number * @number
    @number.to_s
  end

  get '/say/:number/:phrase' do
     @phrase = params[:phrase]
     @number = params[:number].to_i
     return @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  @phrase = params[:word1] + " " + params[:word2] + " " + params[:word3] + " "+ params[:word4] + " " + params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @number = params[:number1].to_i + params[:number2].to_i
      @number = @number.to_s
    end
    if params[:operation] == 'subtract'
     @number = params[:number1].to_i - params[:number2].to_i
     @number = @number.to_s
    end
    if params[:operation] == 'multiply'
      @number = params[:number1].to_i * params[:number2].to_i
      @number = @number.to_s
    end
    if params[:operation] == 'divide'
      @number = params[:number1].to_i / params[:number2].to_i
      @number = @number.to_s
    end


    @number
  end



end