require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @reversename = @name.reverse
    "#{@reversename}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i * params[:number].to_i
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @phrase = []

    params[:number].to_i.times do
       @phrase << params[:phrase]
    end

    @phrase.join(' ')
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      params[:operation] = "+"
    when "subtract"
      params[:operation] = "-"
    when "multiply"
      params[:operation] = "*"
    when "divide"
      params[:operation] = "/"
    else
      "This operation cannot be performed"
    end

    @answer = params[:number1].to_i.send params[:operation], params[:number2].to_i
    "#{@answer}"
  end

end