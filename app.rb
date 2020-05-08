require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
  	"#{params[:name].reverse}"
  end  

  get '/square/:number' do 
  	"#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do 
  	string = ""
  	params[:number].to_i.times {
  		string += params[:phrase]
  	}
  	string
  end  

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
  	string = ""
  	params.each { |k, w|
  		string += w
  		string += ' '
  	}
  	arr = string.split('')
  	arr.pop
  	string = arr.join 
  	string += '.'
  end  

  get '/:operation/:n1/:n2' do 
  	case params[:operation]
  		when 'add'
		  "#{params[:n1].to_i + params[:n2].to_i}"
		when 'subtract'
		  "#{params[:n1].to_i - params[:n2].to_i}"
		when 'multiply'
		  "#{params[:n1].to_i * params[:n2].to_i}"
		when 'divide'
		  "#{params[:n1].to_i / params[:n2].to_i}"
		else
		  "Wrong URI"
	end
  end



end