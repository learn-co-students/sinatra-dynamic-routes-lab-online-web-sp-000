require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
    # Write your code here!

    get '/reversename/:name' do
        @name = params[:name]
        @name.reverse
    end

    get '/square/:number' do

        # first attempt
        # @number = params[:number].to_i
        # @square = @number * @number
        # @square.to_s

        # second attempt
        # @number = params[:number].to_i
        # @number.sqrt.to_s

        # third attempt
        @number = params[:number].to_i
        @square = @number ** 2
        @square.to_s
    end

    get '/say/:number/:phrase' do

        # first attempt
        # @number = params[:number].to_i
        # @phrase = params[:phrase]
        # @number.times {puts "#{@phrase}"}
        #=> repeats the phrase n times
        #=> sends a 200 status code (FAILED - 1)
        #=> expected: 200
        #=>      got: 3

        # second attempt
        # @number = params[:number].to_i
        # @phrase = params[:phrase]
        # if @number > 0
        #     "#{@phrase}"
        # end
        #=> sends a 200 status code
        #=> repeats the phrase n times (FAILED - 1)

        # SOLUTION
        answer = ""
        params[:number].to_i.times do
            answer += params[:phrase]
        end
        answer
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
        "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end

    get '/:operation/:number1/:number2' do

        # first attempt
        # @num1 = params[:number1].to_i
        # @num2 = params[:number2].to_i
        # @add = @num1 + @num2
        # @add.to_s
        # @subtract = @num2 - @num1
        # @subtract.to_s

        # SOLLUTION
        num1 = params[:number1].to_i
        num2 = params[:number2].to_i
        answer = 'Unable to perform this operation'

        case params[:operation]
        when 'add'
            answer = (num1 + num2).to_s
        when 'subtract'
            answer = (num1 - num2).to_s
        when 'multiply'
            answer = (num1 * num2).to_s
        when 'divide'
            answer = (num1 / num2).to_s
        end
    end


end
