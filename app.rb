require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name] 
    @name.reverse
  end

  get '/square/:number' do 
    @number = params[:number]
    number = @number.to_i
     squared_number = number ** 2

    squared_number.to_s
  end 

  get '/say/:number/:phrase' do 
    return_array = []
    number = params[:number].to_i
    phrase = params[:phrase]
    number.times {return_array << phrase}
    return_array
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    word1 +' '+ word2 +' '+ word3  +' '+ word4  +' '+ word5 + '.'
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    if operation == 'add' 
    number3 = number1 + number2
    number3.to_s
    elsif operation == 'subtract' 
    number_subtracted = number2 - number1
    number_subtracted.to_s
  elsif operation == 'multiply'
    number_multiply = number1 * number2
    number_multiply.to_s
  else operation == 'divid'
    number_multiply = number1 / number2
    number_multiply.to_s
    end
  end
end