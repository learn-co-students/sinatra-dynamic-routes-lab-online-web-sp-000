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
    @sq_root = Math.sqrt(@number)
    @sq_root.to_s
    "#{@sq_root}"
  end

end