require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    calc_num = params[:number].to_i ** 2
    "#{calc_num}"
  end

  get '/say/:number/:phrase' do
    final_phrase = ""
    params[:number].to_i.times do
    final_phrase += params[:phrase]
    end
    final_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    phrase = ""
    5.times do |i|
      word_for_phrase = "word" + (i+1).to_s
      phrase += "#{params[word_for_phrase]} "
    end
    phrase = "#{phrase.strip}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
      when 'add'
        operator = "+"
      when 'subtract'
        operator = "-"
      when 'multiply'
        operator = "*"
      when 'divide'
        operator = "/"
      else
    end
    "#{params[:number1].to_i.public_send(operator, params[:number2].to_i)}"
  end

end
