require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @user = params[:name]
    @user.reverse
  end 
  
  get '/square/:number' do 
    @new_number = params[:number]
    (@new_number.to_i ** 2).to_s
  end
  
  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @array = []
    i=1
    while i <= @number.to_i
      @array << @phrase
      i +=1
    end 
    @array.join(" ")
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]

    "#{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}."

  end 
  
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num_1 = params[:number1]
    @num_2 = params[:number2]

    case @operation

      when "add"
        (@num_1.to_i + @num_2.to_i).to_s
      when "subtract"
         (@num_1.to_i - @num_2.to_i).to_s
      when "multiply"
         (@num_1.to_i * @num_2.to_i).to_s
      when "divide"
         (@num_1.to_i / @num_2.to_i).to_s
    end 
  end 
  
end