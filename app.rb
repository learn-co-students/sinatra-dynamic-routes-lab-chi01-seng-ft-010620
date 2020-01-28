require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    erb :reversename
  end

  get '/square/:number' do 
    erb :square_number
   end

  get '/say/:number/:phrase' do 
    erb :say_num_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    array= []
    array << params[:word1]
    array << params[:word2]
    array << params[:word3]
    array << params[:word4]
    array << params[:word5]
    final_string = array.join(" ") + "."
  end

   get '/:operation/:number1/:number2' do
    case params[:operation]
    when'add' 
      answer = params[:number1].to_i + params[:number2].to_i
    when 'subtract'
      answer = params[:number1].to_i - params[:number2].to_i
    when 'multiply'
      answer = params[:number1].to_i * params[:number2].to_i
    when 'divide'
      answer = params[:number1].to_i / params[:number2].to_i
    end
  answer.to_s
  end


end