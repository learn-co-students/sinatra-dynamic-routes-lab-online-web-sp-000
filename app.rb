require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
  	@result = params[:name].reverse
  	# "#{@result}"
  	@result
	end

  get "/square/:num" do
  	@result = params[:num].to_i * params[:num].to_i
  	"#{@result}"
	end
end