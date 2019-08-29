require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
    get "/reversename/:name" do
      # @user_name = params[:name]
      # "Goodbye, #{@user_name}."
      @name = params[:name].reverse
      # "#{@name}"
    end

    get "/square/:num" do
      # @user_name = params[:name]
      # "Goodbye, #{@user_name}."
      val = params[:num].to_i * params[:num].to_i
      val.to_s
    end

    get "/say/:number/:phrase" do

      val = params[:number].to_i
      str = params[:phrase]
      result = ''
      val.times do
        result += str
      end
      result
 binding.pry
 # result.scan('show me the money').size return the correct val in the .pry not sure why test failed.  Had this happen before where support tech couldnt figure out
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end

    get '/:operation/:number1/:number2' do
        op = params[:operation]
        val1 = params[:number1].to_i
        val2 = params[:number2].to_i

        case op
        when 'add'
          tot = val1 + val2
        when 'subtract'
          tot = val1 - val2
        when 'multiply'
          tot = val1 * val2
        when 'divide'
          tot = val1 / val2
        end
        tot.to_s
      end

    get "/multiply/:num1/:num2" do
      @num1 = params[:num1].to_i
      @num2 = params[:num2].to_i
      # @num1 * @num2
       "#{@num1 * @num2}"
    end
end
