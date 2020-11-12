require_relative 'config/environment'

class App < Sinatra::Base
    # Write your code here!
    get '/reversename/:name' do
        @name = params[:name]
        @reversed_name = @name.reverse
    end

    get '/square/:number' do
        @number = params[:number].to_i
        @squared_number = @number * @number
        @squared_number.to_s
    end

    # get '/say/:word1/:word2/:word3/:word4/:word5' do
    #     @word1 = params[:word1]
    #     @word2 = params[:word2]
    #     @word3 = params[:word3]
    #     @word4 = params[:word4]
    #     @word5 = params[:word5]
    #     "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}"
    # end

    get '/say/:number/:phrase' do
        # @total = params[:phrase] * params[:number].to_i
        # "#{@total}"
        # @number = params[:number].to_i
        # @phrase = params[:phrase]
        empty = ""
        # @number.times {empty += @phrase}
        params[:number].to_i.times do
            empty += params[:phrase]
        end
        empty
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
        @word1 = params[:word1]
        @word2 = params[:word2]
        @word3 = params[:word3]
        @word4 = params[:word4]
        @word5 = params[:word5]
        "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    end

    get '/:operation/:number1/:number2' do
        @operation = params[:operation]
        @number1 = params[:number1].to_i
        @number2 = params[:number2].to_i
        if @operation.downcase == "add"
            (@number1 + @number2).to_s
        elsif @operation.downcase == "subtract"
            (@number1 - @number2).to_s
        elsif @operation.downcase == "multiply"
            (@number1 * @number2).to_s
        elsif @operation.downcase == "divide"
            (@number1 / @number2).to_s
        end
    end
end