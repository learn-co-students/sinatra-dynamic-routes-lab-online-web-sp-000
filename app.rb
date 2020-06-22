require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get "/square/:number" do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square.to_s}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    output = ""
    @number.times do
      output += "#{@phrase} "
    end
    output
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @output = ""
    params.each {|k, v| @output += "#{v} "}
    "#{@output.chomp(" ")}."
  end

  get "/:operation/:number1/:number2" do
    operations = {add: "+", subtract: "-", multiply: "*", divide: "/"}
    operations.each do |k, v|
      if k == params[:operation].to_sym
        @operation = v
      end
    end
    @output = params[:number1].to_i.send(@operation, params[:number2].to_i)
    "#{@output}"
  end

end