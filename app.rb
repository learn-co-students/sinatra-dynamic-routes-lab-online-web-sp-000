require_relative 'config/environment'

class App < Sinatra::Base

	get '/reversename/:name' do
		@reverse_name = params[:name].reverse
		@reverse_name
	end

	get '/square/:number' do
		@given_number = params[:number].to_i ** 2
		@given_number.to_s
	end

	get '/say/:number/:phrase' do
		result = ""
		@repeats = params[:number].to_i
		@phrase = params[:phrase]
		@repeats.times {result += @phrase}
		result
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
		@num1 = params[:number1].to_i
		@num2 = params[:number2].to_i


		case @operation
			when "subtract"
				(@num1 - @num2).to_s
			when "add"
				(@num1 + @num2).to_s
			when "multiply"
				(@num1 * @num2).to_s
			when "divide"
				(@num1 / @num2).to_s
		end
	end



end