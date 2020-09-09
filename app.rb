require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @in_reverse = @name.reverse
    "#{@in_reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    @number.to_i
    @square = @number * @number
    @square.to_s
    "#{@square}"
  end

end