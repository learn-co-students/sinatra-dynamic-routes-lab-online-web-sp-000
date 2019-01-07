require_relative 'config/environment'

class App < Sinatra::Base

  #Create a dynamic route at get '/reversename/:name'
  #that accepts a name and renders the name backwards.
  get '/reversename/:name' do
    @name = params[:name].reverse!
    "#{@name}"
  end

  #Create a dynamic route at get '/square/:number'
  #that accepts a number and returns the square of that number.
  #Note: Remember that values in params always come in as strings,
  #and your return value for the route should also be a string
  #(use .to_i and .to_s).
  get '/square/:number' do
    @num = (params[:number].to_i*params[:number].to_i).to_s
    "#{@num}"
  end

  #Create a dynamic route at get '/say/:number/:phrase'
  #that accepts a number and a phrase
  #and returns that phrase in a string the number of times given.
  get '/say/:number/:phrase' do
    @phr_times = (params[:phrase]*params[:number].to_i).to_s
    "#{@phr_times}"
  end

  #Create a dynamic route at
  #get '/say/:word1/:word2/:word3/:word4/:word5'
  #that accepts five words and returns a string
  #containing all five words (i.e. word1 word2 word3 word4 word5).
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @all_words = (params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + ".").to_s
    "#{@all_words}"
  end

  #Create a dynamic route at
  #get '/:operation/:number1/:number2'
  #that accepts an operation (add, subtract, multiply or divide)
  #and performs the operation on the two numbers provided.
  #For example, going to /add/1/2 should render 3.
  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      op = :+
    elsif params[:operation] == "subtract"
      op = :-
    elsif params[:operation] == "multiply"
      op = :*
    elsif params[:operation] == "divide"
      op = :/
    end
    @final = ((params[:number1].to_i).public_send(op,params[:number2].to_i)).to_s
    "#{@final}"
  end
end
