require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end
   
  get "/square/:number" do
    @number = params[:number].to_i**2
    "#{@number}"
  end

  get "/say/:number/:phrase" do
    @number=params[:number].to_i
    @phrase=params[:phrase]
    saying=["#{@phrase}"]
    sayings=saying*@number
    sayings.join(", ")
  end   

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word_1=params[:word1]
    @word_2=params[:word2]
    @word_3=params[:word3]
    @word_4=params[:word4]
    @word_5=params[:word5]
    words=["#{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}."] 
    words.join(" ")
  end
  
  get "/:operation/:number1/:number2" do
    @o=params[:operation]
    @n_1=params[:number1].to_f
    @n_2=params[:number2].to_f
    if @o=="add"
      problem=[@n_1+@n_2]
      problem.join
     elsif @o=="subtract"
       problem=[@n_1-@n_2]
       problem.join
     elsif @o=="multiply"
       problem=[@n_1*@n_2]
       problem.join
     elsif @o=="divide"
       problem=[@n_1/@n_2]
       problem.join
     end
    end
       
end






