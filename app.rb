require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @user_name = params[:name] 
    "Hello World #{@user_name}".reverse
  end

  get "/square/:number" do
    (params[:number].to_i  ** 2).to_s
    
end
end