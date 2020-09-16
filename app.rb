require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

 get '/hello' do
   "Hello"
 end
  

  get '/reversename' do
    @name = params[:name]
    "Hello #{name.reverse}"
  end
end