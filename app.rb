require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @reveresed_name = @name.reverse
    "#{@reveresed_name}"
  end

  get "/square/:number" do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @counter = 0
    phrases = []
    while @counter < @number do
      phrases << @phrase
      @counter += 1
    end
    "#{phrases}"
  end
end
