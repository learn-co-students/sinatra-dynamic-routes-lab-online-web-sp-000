require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
  	@result = params[:name].reverse
  	"#{@result}"
	end

  get "/square/:num" do
  	@result = params[:num].to_i * params[:num].to_i
  	"#{@result}"
	end

  get "/say/:number/:phrase" do
	  @phrase = params[:phrase]
	  array = []
	  params[:number].to_i.times do
	  	array << @phrase
	  end
	  @phrase = array.join(" ")
	end

	get "/say/:word1/:word2/:word3/:word4/:word5" do
		@word_array = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]] 	
		"#{@word_array.join(" ")}."
	end

	get '/:operation/:number1/:number2' do
		case params[:operation]
			when "add"
				"#{params[:number1].to_i + params[:number2].to_i}"
			when "subtract"
				"#{params[:number1].to_i - params[:number2].to_i}"
			when "multiply"
				"#{params[:number1].to_i * params[:number2].to_i}"
			when "divide"
				"#{params[:number1].to_i / params[:number2].to_i}"
		end
	end
end








