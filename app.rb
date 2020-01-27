require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    "#{params[:name]}, #{params[:name].reverse}"
  end 

  get '/square/:number' do 
    integer = params[:number].to_i
    answer = integer * integer
    "#{answer}"
  end 

  get '/say/:number/:phrase' do 
    array = []
    integer = params[:number].to_i
    integer.times do array <<params[:phrase]
    end 
    array.join(',')
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    integer_1 = params[:number1].to_i
    integer_2 = params[:number2].to_i
    operation = params[:operation]
    if operation == 'add'
      (integer_1 + integer_2).to_s
    elsif operation == 'subtract'
      (integer_1 - integer_2).to_s
    elsif operation == 'multiply'
      (integer_1 * integer_2).to_s
    elsif operation == 'divide'
      (integer_1 / integer_2).to_s
    end 
  end 

end