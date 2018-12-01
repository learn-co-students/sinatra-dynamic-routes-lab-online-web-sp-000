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
    @phrase = params[:phrase]
    (params[:number].to_i).times do
      puts "#{@phrase}"
    end
  end
end
