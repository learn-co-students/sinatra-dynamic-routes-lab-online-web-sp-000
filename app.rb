require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase'  do
    my_string = ""
    @phrase = params[:phrase]
    (params[:number].to_i).times do
      my_string += "#{@phrase}\n"
    end
    my_string
  end
end
