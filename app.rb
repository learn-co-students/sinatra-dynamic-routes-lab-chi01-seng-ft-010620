require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse 
  end 

  get '/square/:number' do 
    @number = params[:number].to_i
    (@number ** 2).to_s
  end 

  get '/say/:number/:phrase' do 
      @number = params[:number].to_i
      @phrase = params[:phrase] * @number 
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    array = []  
    params.each do |k, v|
      array << v 
    end 
    array.join(" ") + "."
  end 

  get '/:operation/:number1/:number2' do 
      @op = params[:operation]
      @num1 = params[:number1].to_i 
      @num2 = params[:number2].to_i
      case params[:operation]
      when  "add"
        add = @num1 + @num2 
        add.to_s 
      when "subtract"
        subt = @num1 - @num2 
        subt.to_s 
      when "multiply"
        mult = @num1 * @num2
        mult.to_s
      when "divide"
        divide = @num1 / @num2
        divide.to_s 
      
      end 

      

    
  end 


end