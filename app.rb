require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse
  end

  get '/square/:number' do
    @user_number = params[:number].to_i
    "#{@user_number ** 2}"
  end

  get '/say/:number/:phrase' do
    answer = ''
    params[:number].to_i.times do
      answer += params[:phrase]
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
      answer = ''
      @word1 = params[:word1].to_s
      @word2 = params[:word2].to_s
      @word3 = params[:word3].to_s
      @word4 = params[:word4].to_s
      @word5 = params[:word5].to_s
      answer = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
      answer
  end

  get '/:operation/:number1/:number2' do
      @operation = params[:operation]

      @number1 = params[:number1].to_i
      @number2 = params[:number2].to_i
      if @operation == "add"
          answer = "#{@number1 + @number2}"
          answer.to_s
      elsif @operation == "subtract"
          answer = "#{@number2 - @number1}"
          answer.to_s
      elsif @operation == "multiply"
          answer = "#{@number1 * @number2}"
          answer.to_s
      else
          answer = "#{@number1/@number2}"
          answer.to_s
      end
  end
end
